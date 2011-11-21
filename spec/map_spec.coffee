Map = require('../src/map').Map
Position = require('../src/position').Position

describe("Map", ->
  beforeEach(->
    @map = new Map
  )

  it("has boundaries", ->
    expect(@map.getTopLeftBound()).toEqual(new Position(0, 0))
    expect(@map.getTopRightBound()).toEqual(new Position(20, 0))
    expect(@map.getBottomLeftBound()).toEqual(new Position(0, 20))
    expect(@map.getBottomRightBound()).toEqual(new Position(20, 20))
  )

  it("contains grass in every tile", ->
    expect(@map.getTilesAtPosition(new Position(0, 0))).toEqual(new GrassTile)

  )
)
