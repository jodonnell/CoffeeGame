Position = require('../src/position').Position

class Map
  constructor: () ->

  getTopLeftBound: () ->
    new Position(0, 0)

  getTopRightBound: () ->
    new Position(20, 0)

  getBottomLeftBound: () ->
    new Position(0, 20)

  getBottomRightBound: () ->
    new Position(20, 20)

  getTilesAtPosition: (position) ->
    new GrassTile

root = exports ? this
root.Map = Map