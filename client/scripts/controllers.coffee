'use strict'

### Controllers ###

angular.module('myApp.controllers', [])

.controller('AppCtrl', ["$scope", "$http", ($scope, $http) ->
  $http
    method: 'GET'
    url:    '/api/name'
  .success (data, status, headers, config) ->
    $scope.name = data.name
  .error (data, status, headers, config) ->
    $scope.name = 'Error!'
  ])

.controller('MyCtrl1', ["$scope", ($scope) ->
  # write Ctrl here
  ])

.controller('MyCtrl2', ["$scope", ($scope) ->
  # write Ctrl here
  ])
