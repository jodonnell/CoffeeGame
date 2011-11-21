Position = require('../src/position').Position
Tiles = require('../src/tiles').Tiles

class Map
  constructor: () ->
    @map = {}
    @map[new Position(num, innerNum)] = (new Tiles).getGrass() for innerNum in [0..20] for num in [0..20]
    @map[new Position(1, 0)] = (new Tiles).getWater()

  getTopLeftBound: () ->
    new Position(0, 0)

  getTopRightBound: () ->
    new Position(20, 0)

  getBottomLeftBound: () ->
    new Position(0, 20)

  getBottomRightBound: () ->
    new Position(20, 20)

  getTilesAtPosition: (position) ->
    (new Tiles).getGrass()

root = exports ? this
root.Map = Map