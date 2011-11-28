root = exports ? this

if exports?
  root.Position = require('../src/position').Position

class PointToPosition
  convert: (x, y) ->
    new root.Position(Math.floor(x / 60), Math.floor(y / 60))

root.PointToPosition = PointToPosition