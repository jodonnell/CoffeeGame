Position = require('../src/position').Position


describe("Position", ->
  beforeEach(->
    @position = new Position 1, 4
  )

  it("has a x", ->
    expect(@position.getX()).toBe(1)
  )

  it("has a y", ->
    expect(@position.getY()).toBe(4)
  )
)
