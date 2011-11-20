http = require "http"
Routes = require('./routes').Routes

http.createServer( (request, response) ->
  routes = new Routes request.url

  response.writeHead(200, {"Content-Type": routes.getHeader()})
  response.end(routes.getResponse(), routes.getEncoding())
).listen 8000
