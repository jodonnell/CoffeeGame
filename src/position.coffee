class Position
  constructor: (@x, @y) ->

  getX: () ->
    @x

  getY: () ->
    @y

  getScreenX: () ->
    @x * 60

  getScreenY: () ->
    @y * 60

  getHashKey: () ->
    "#{@x}#{@y}"

root = exports ? this
root.Position = Position
