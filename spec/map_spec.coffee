Map = require('../src/map').Map

Position = require('../src/position').Position
Tiles = require('../src/tiles').Tiles

describe("Map", ->
  beforeEach(->
    @map = new Map
  )

  it("has boundaries", ->
    expect(@map.getTopLeftBound()).toEqual(new Position(0, 0))
    expect(@map.getTopRightBound()).toEqual(new Position(20, 0))
    expect(@map.getBottomLeftBound()).toEqual(new Position(0, 11))
    expect(@map.getBottomRightBound()).toEqual(new Position(20, 11))
  )

  it("contains grass in the first position", ->
    expect(@map.getTilesAtPosition(new Position(0, 0))).toEqual((new Tiles).getGrass())
  )

  it("contains water in the second position", ->
    expect(@map.getTilesAtPosition(new Position(1, 0))).toEqual((new Tiles).getWater())
  )

)
