Position = require('../src/position').Position
Tiles = require('../src/tiles').Tiles

class Map
  constructor: () ->
    @map
    for (num in 0..20)
      for (innerNum in 0..20)
        @map[num][innerNum] = (new Tiles).getGrass()
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