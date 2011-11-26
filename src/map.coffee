root = exports ? this

if exports?
  root.Position = require('../src/position').Position
  root.Tiles = require('../src/tiles').Tiles

class Map
  constructor: () ->
    @map = {}
    @map[new Position(num, innerNum).getHashKey()] = (new Tiles).getGrass() for innerNum in [0..11] for num in [0..20]
    @map[new Position(1, 0).getHashKey()] = (new Tiles).getWater()


  getTopLeftBound: () ->
    new Position(0, 0)

  getTopRightBound: () ->
    new Position(20, 0)

  getBottomLeftBound: () ->
    new Position(0, 11)

  getBottomRightBound: () ->
    new Position(20, 11)

  getTilesAtPosition: (position) ->
    @map[position.getHashKey()]

root.Map = Map