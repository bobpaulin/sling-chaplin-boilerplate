define [
  'views/base/view'
  'templates/hello-world/hello-world'
], (View, template) ->
  'use strict'

  class HelloWorldView extends View
    # Automatically render after initialize.
    autoRender: true
    className: 'hello-world'
    region: 'main'

    # Save the template string in a prototype property.
    # This is overwritten with the compiled template function.
    # In the end you might want to used precompiled templates.
    template: template
    template = null
