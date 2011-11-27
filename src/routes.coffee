fs = require "fs"

class Routes
  constructor: (url) ->
    @encoding = 'utf8'
    url = @scrubUrl(url)
    @serveJS(url) if @endsWith(url, 'js')
    @serveIndex() if url == '/'
    @serveJpg(url) if @endsWith(url, 'jpg')
    @servePng(url) if @endsWith(url, 'png')

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

  serveJpg: (url) ->
    @encoding = 'binary'
    @response = @getFile("./#{url}")
    @header = "image/jpg"

  servePng: (url) ->
    @encoding = 'binary'
    @response = @getFile("./#{url}")
    @header = "image/png"

  getFile: (file) ->
    fs.readFileSync(file).toString(@encoding)

  endsWith: (str, suffix) ->
    str.indexOf(suffix, str.length - suffix.length) != -1;

  scrubUrl: (url) ->
    url.replace(/\.\./, '')

root = exports ? this
root.Routes = Routes