class Position
  constructor: (@x, @y) ->

  getX: () ->
    @x

  getY: () ->
    @y

  getHashKey: () ->
    "#{@x}#{@y}"

root = exports ? this
root.Position = Position
