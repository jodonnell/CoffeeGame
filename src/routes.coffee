fs = require "fs"

class Routes
  constructor: (url) ->
    @encoding = 'utf8'
    @serveJS(url) if @endsWith(url, 'js')
    @serveIndex() if url == '/'
    @serveGif() if @endsWith(url, 'gif')
    @serveJpg() if @endsWith(url, 'jpg')

  getResponse: () ->
    @response

  getHeader: () ->
    @header

  getEncoding: () ->
    @encoding

  serveJS: (url) ->
    @response = @getFile("./src/#{url}")
    @header = "text/javascript"

  serveIndex: () ->
    @response = @getFile('./src/index.html')
    @header = "text/html"

  serveGif: () ->
    @encoding = 'binary'
    @response = @getFile('./images/tileGrass.gif')
    @header = "image/gif"

  serveJpg: () ->
    @encoding = 'binary'
    @response = @getFile('./images/tileWater.jpg')
    @header = "image/jpg"

  getFile: (file) ->
    fs.readFileSync(file).toString(@encoding)

  endsWith: (str, suffix) ->
    str.indexOf(suffix, str.length - suffix.length) != -1;


root = exports ? this
root.Routes = Routes