<?php

namespace Drupal\jcms_rest\Plugin\rest\resource;

use Drupal\image\Entity\ImageStyle;
use Drupal\rest\Plugin\ResourceBase;
use Drupal\rest\ResourceResponse;
use Symfony\Component\HttpFoundation\Response;

/**
 * Provides a resource to get view modes by entity and bundle.
 *
 * @RestResource(
 *   id = "podcast_episodes_list_rest_resource",
 *   label = @Translation("Podcast episode list rest resource"),
 *   uri_paths = {
 *     "canonical" = "/podcast-episodes"
 *   }
 * )
 */
class PodcastEpisodesRestResource extends ResourceBase {
  /**
   * Responds to GET requests.
   *
   * Returns a list of bundles for specified entity.
   *
   * @throws \Symfony\Component\HttpKernel\Exception\HttpException
   *   Throws exception expected.
   */
  public function get() {
    $base_query = \Drupal::entityQuery('node')
      ->condition('status', NODE_PUBLISHED)
      ->condition('changed', REQUEST_TIME, '<')
      ->condition('type', 'podcast_episode');
    $status = Response::HTTP_OK;

    // @todo - elife - nlisgo - Handle version specific requests
    // @todo - elife - nlisgo - Handle content negotiation

    $count_query = clone $base_query;
    $items_query = clone $base_query;

    $response = [
      'total' => 0,
      'items' => [],
    ];

    if ($total = $count_query->count()->execute()) {
      $response['total'] = (int) $total;

      $request = \Drupal::request();
      $options = [
        'page' => $request->query->get('page', 1),
        'per-page' => $request->query->get('per-page', 20),
        'order' => $request->query->get('order', 'desc'),
      ];

      $items_query->range(($options['page']-1)*$options['per-page'], $options['per-page']);
      $items_query->sort('field_episode_number.value', $options['order']);

      $nids = $items_query->execute();
      /* @var \Drupal\node\Entity\Node[] $nodes */
      $nodes = \Drupal\node\Entity\Node::loadMultiple($nids);
      foreach ($nodes as $node) {
        $item = [
          'number' => $node->get('field_episode_number')->first()->getValue()['value'],
          'title' => $node->getTitle(),
          'published' => \Drupal::service('date.formatter')->format($node->getCreatedTime(), 'html_datetime'),
          'image' => [
            'alt' => $node->get('field_image')->first()->getValue()['alt'],
            'sizes' => [
              '2:1' => [
                900 => '450',
                1800 => '900',
              ],
              '16:9' => [
                250 => '141',
                500 => '282',
              ],
              '1:1' => [
                70 => '70',
                140 => '140',
              ],
            ],
          ],
          'mp3' => $node->get('field_episode_mp3')->first()->getValue()['uri'],
        ];

        $image_uri = $node->get('field_image')->first()->get('entity')->getTarget()->get('uri')->first()->getValue()['value'];
        foreach ($item['image']['sizes'] as $ar => $sizes) {
          foreach ($sizes as $width => $height) {
            $image_style = [
              'crop',
              str_replace(':', 'x', $ar),
              $width . 'x' . $height,
            ];
            $item['image']['sizes'][$ar][$width] = ImageStyle::load(implode('_', $image_style))->buildUrl($image_uri);
          }
        }

        if ($node->get('field_impact_statement')->count()) {
          $item['impactStatement'] = $node->get('field_impact_statement')->first()->getValue()['value'];
        }

        if ($node->get('field_subjects')->count()) {
          $item['subjects'] = [];
          /** @var \Drupal\Core\Entity\Entity $field_subjects */
          $field_subjects = $node->get('field_subjects');
          /* @var \Drupal\taxonomy\Entity\Term $term */
          foreach ($field_subjects->referencedEntities() as $term) {
            $item['subjects'][] = $term->get('field_subject_id')->first()->getValue()['value'];
          }
        }

        $response['items'][] = $item;
      }
    }

    $resource_response = new ResourceResponse($response, $status);
    // @todo - elife - nlisgo - Implement caching with options as a cacheable dependency, disable for now.
    $resource_response->addCacheableDependency(NULL);

    return $resource_response;
  }

}
