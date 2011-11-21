fs = require "fs"

class Routes
  constructor: (url) ->
    @encoding = 'utf8'
    @serveJQuery() if url == '/jquery.js'
    @serveTiles() if url == '/tiles.js'
    @serveEngine() if url == '/game_engine.js'
    @serveIndex() if url == '/'
    @serveGif() if @endsWith(url, 'gif')

  getResponse: () ->
    @response

  getHeader: () ->
    @header

  getEncoding: () ->
    @encoding

  serveIndex: () ->
    @response = @getFile('./src/index.html')
    @header = "text/html"

  serveEngine: () ->
    @response = @getFile('./src/game_engine.js')
    @header = "text/javascript"

  serveJQuery: () ->
    @response = @getFile('./src/jquery.js')
    @header = "text/javascript"

  serveTiles: () ->
    @response = @getFile('./src/tiles.js')
    @header = "text/javascript"

  serveGif: () ->
    @encoding = 'binary'
    @response = @getFile('./images/tileGrass.gif')
    @header = "image/gif"

  getFile: (file) ->
    fs.readFileSync(file).toString(@encoding)

  endsWith: (str, suffix) ->
    str.indexOf(suffix, str.length - suffix.length) != -1;


root = exports ? this
root.Routes = Routes