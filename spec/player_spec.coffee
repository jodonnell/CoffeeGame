Player = require('../src/player').Player
Position = require('../src/position').Position

describe("Player", ->
  beforeEach(->
    @player = new Player(new Position(0, 0))
  )

  it("has a position", ->
    expect(@player.getPosition()).toEqual(new Position(0, 0))
  )

  it("can move 2 squares on map", ->
    positions = [new Position(1, 0), new Position(2, 0), new Position(1, 1), new Position(0, 1), new Position(0, 2)]
    for position in positions
      expect(@player.canMove()).toContain(position)

    @player = new Player(new Position(1, 1))
    positions = [new Position(0, 0), new Position(1, 0), new Position(0, 1), new Position(2, 0), new Position(0, 2), new Position(3, 1), new Position(1, 3), new Position(1, 2), new Position(2, 1),
    new Position(2, 2)]
    for position in positions
      expect(@player.canMove()).toContain(position)
  )
)
