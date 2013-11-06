'use strict'

### Controllers ###

angular.module('app.controllers', [])

.controller('AppCtrl', ($scope, $http) ->
  $http
    method: 'GET'
    url:    '/api/name'
  .success (data, status, headers, config) ->
    $scope.name = data.name
  .error (data, status, headers, config) ->
    $scope.name = 'Error!'

).controller('MyCtrl1', ($scope) ->
  # write Ctrl here

).controller('MyCtrl2', ($scope) ->
  # write Ctrl here
)
