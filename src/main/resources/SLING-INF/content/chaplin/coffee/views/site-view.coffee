define [
  'views/base/view'
  'templates/site/site'
], (View, template) ->
  'use strict'

  class SiteView extends View
    container: 'body'
    id: 'site-container'
    regions:
      main: '#main-container'
    template: template
    template = null
