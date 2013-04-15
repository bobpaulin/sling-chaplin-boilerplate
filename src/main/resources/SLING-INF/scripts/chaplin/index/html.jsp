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
  <!--<webresource:webresource groupName="chaplin"/>-->
  <script src="js/vendor/require-2.1.1.js"></script>
  <script>
  // Configure the AMD module loader
  requirejs.config({
    // The path where your JavaScripts are located
    baseUrl: './js/',
    // Specify the paths of vendor libraries
    paths: {
      jquery: 'vendor/jquery-1.9.1',
      underscore: 'vendor/underscore-1.4.3',
      backbone: 'vendor/backbone-1.0.0',
      handlebars: 'vendor/handlebars-1.0.rc.1',
      text: 'vendor/require-text-2.0.3',
      chaplin: 'vendor/chaplin-0.8.1'
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
  require(['chaplin'], function(Application) {
    (new Application).initialize();
  });
  </script>
</head>
<body></body>
</html>
