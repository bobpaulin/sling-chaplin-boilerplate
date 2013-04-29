define [
  'views/base/view'
  'templates/site'
], (View, template) ->
  'use strict'

  class SiteView extends View
    container: 'body'
    id: 'site-container'
    regions:
      '#main-container': 'main'
    template: template
    template = null
