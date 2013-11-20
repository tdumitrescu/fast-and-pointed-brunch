'use strict'

describe "controllers", ->
  beforeEach(module "myApp.controllers")

  describe "AppCtrl", ->
    it "fetches name from the backend", inject ($rootScope, $controller, $httpBackend) ->
      scope = $rootScope.$new()

      $httpBackend.expectGET('/api/name').respond name: "bla"
      ctrl = $controller "AppCtrl", $scope: scope
      $httpBackend.flush()

      expect(scope.name).toEqual "bla"
