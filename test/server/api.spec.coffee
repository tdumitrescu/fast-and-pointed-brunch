'use strict'

path    = require 'path'
request = require 'request'
expect  = require 'expect.js'
server  = require path.join(__dirname, '..', '..', 'server', 'server.coffee')
PORT    = 3434

before (done) ->
  server.startServer PORT
  done()

describe "server API", ->
  describe "/name", ->

    it "returns a dummy name", (done) ->
      request "http://localhost:#{PORT}/api/name", (error, response, body) ->
        expect(JSON.parse(body).name).to.eql "Bob"
        done()
