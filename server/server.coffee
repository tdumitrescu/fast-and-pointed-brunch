#
# Module dependencies
#

express = require 'express'
routes  = require './routes'
api     = require './routes/api'
http    = require 'http'
path    = require 'path'

app = module.exports = express()

#
# Configuration
#

# all environments
app.set 'views', path.join(__dirname, '..', 'client')
app.set 'view engine', 'jade'
app.use express.logger('dev')
app.use express.bodyParser()
app.use express.methodOverride()
app.use express.static(path.join(__dirname, '..', '_public'))
app.use app.router

# development only
if app.get('env') is 'development'
  app.use express.errorHandler()

# production only
# if app.get('env') is 'production'
  # TODO

#
# Routes
#

# serve index and view partials
app.get '/', routes.index

# JSON API
app.get '/api/name', api.name

# redirect all others to the index (HTML5 history)
app.get '*', routes.index


#
# Start Server
#

module.exports.startServer = (port, path, callback) ->
  app.set 'port', port
  http.createServer(app).listen port, ->
    console.log "Express server listening on port #{port}"
