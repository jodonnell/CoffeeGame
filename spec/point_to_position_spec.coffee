PointToPosition = require('../src/point_to_position').PointToPosition
Position = require('../src/position').Position

describe("PointToPosition", ->
  beforeEach(->
    @pointToPosition = new PointToPosition
  )

  it("can convert a point to a Position", ->
    expect(@pointToPosition.convert(0, 0)).toEqual(new Position(0, 0))
    expect(@pointToPosition.convert(59, 59)).toEqual(new Position(0, 0))
    expect(@pointToPosition.convert(60, 60)).toEqual(new Position(1, 1))
  )
)
