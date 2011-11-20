class Position
  constructor: (@x, @y) ->

  getX: () ->
    @x

  getY: () ->
    @y

root = exports ? this
root.Position = Position