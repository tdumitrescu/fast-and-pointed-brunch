'use strict'

# Declare app level module which depends on filters, and services
angular.module('app', [
  'ngCookies'
  'ngResource'
  'app.controllers'
  'app.directives'
  'app.filters'
  'app.services'
  'partials'
])
.config ($routeProvider, $locationProvider) ->
  $routeProvider

    .when '/view1',
      templateUrl: '/partials/partial1.html'
      controller: 'MyCtrl1'

    .when '/view2',
      templateUrl: '/partials/partial2.html'
      controller: 'MyCtrl2'

    .otherwise redirectTo: '/view1'

  $locationProvider.html5Mode true
