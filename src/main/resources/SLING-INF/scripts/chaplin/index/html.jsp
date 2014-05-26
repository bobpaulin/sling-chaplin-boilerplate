<%@page session="false"%>
<%@page import="javax.jcr.Node" %>
<%@page import="javax.jcr.Property" %>
<%@page import="org.apache.sling.api.resource.Resource" %>
<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.0"%>
<%@taglib prefix="webresource" uri="http://sling.apache.org/taglibs/sling/webresource/1.0.0"%>
<sling:defineObjects/>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Chaplin Boilerplate Application</title>
  <style>body { font-family: sans-serif; }</style>
  <script src="js/vendor/requirejs/require.js"></script>
  <script>
  // Configure the AMD module loader
  requirejs.config({
    // The path where your JavaScripts are located
    baseUrl: './js/',
    // Specify the paths of vendor libraries
    paths: {
      jquery: 'vendor/jquery/jquery',
      underscore: 'vendor/lodash/dist/lodash',
      backbone: 'vendor/backbone/backbone',
      handlebars: 'vendor/handlebars/handlebars',
      text: 'vendor/requirejs-text/text',
      chaplin: 'vendor/chaplin/chaplin'
    },
    // Underscore and Backbone are not AMD-capable per default,
    // so we need to use the AMD wrapping of RequireJS
    shim: {
      underscore: {
        exports: '_'
      },
      backbone: {
        deps: ['underscore', 'jquery'],
        exports: 'Backbone'
      },
      handlebars: {
        exports: 'Handlebars'
      }
    }
    // For easier development, disable browser caching
    // Of course, this should be removed in a production environment
    //, urlArgs: 'bust=' +  (new Date()).getTime()
  });

  // Bootstrap the application
  require(['application', 'routes'], function(Application, routes) {
    new Application({routes: routes, controllerSuffix: '-controller',pushState: false, root: '/content/chaplin/index.html'});
  });
  </script>
</head>
<body>
</body>
</html>
