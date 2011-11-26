root = exports ? this

if exports?
  root.Position = require('../src/position').Position
  root.Tiles = require('../src/tiles').Tiles

class Map
  constructor: () ->
    @map = {}
    @map[new root.Position(num, innerNum).getHashKey()] = (new root.Tiles).getGrass() for innerNum in [0..11] for num in [0..20]
    @map[new root.Position(1, 0).getHashKey()] = (new root.Tiles).getWater()


  getTopLeftBound: () ->
    new root.Position(0, 0)

  getTopRightBound: () ->
    new root.Position(20, 0)

  getBottomLeftBound: () ->
    new root.Position(0, 11)

  getBottomRightBound: () ->
    new root.Position(20, 11)

  getTilesAtPosition: (position) ->
    @map[position.getHashKey()]

root.Map = Map