define [
  'views/base/view'
  'templates/site/site'
], (View, template) ->
  'use strict'

  class SiteView extends View
    container: 'body'
    #Replace Server rendered
    containerMethod: 'html'
    id: 'site-container'
    regions:
      '#main-container': 'main'
    template: template
    template = null
