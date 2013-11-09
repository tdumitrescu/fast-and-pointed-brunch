'use strict'

### Directives ###

# register the module with Angular
angular.module('myApp.directives', [
  # require the 'myApp.services' module
  'myApp.services'
])

.directive('appVersion', [
  'version'

(version) ->

  (scope, elm, attrs) ->
    elm.text(version)
])
