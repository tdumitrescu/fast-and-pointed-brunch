'use strict'

# jasmine specs for services go here

describe "service", ->

  beforeEach(module "myApp.services")

  describe "version", ->
    it "returns current version", inject((version) ->
      expect(version).toEqual "0.1"
    )
