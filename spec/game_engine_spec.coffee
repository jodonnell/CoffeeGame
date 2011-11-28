GameEngine = require('../src/game_engine').GameEngine
Position = require('../src/position').Position
fs = require("fs")

describe("GameEngine", ->
  it("testing map images are the same", ->
    game_engine = new GameEngine()
    buffer = game_engine.canvas.toBuffer().toString('binary')
    file = fs.readFileSync('/Users/jacobodonnell/programming/coffee/spec/fixtures/map_load.jpg').toString('binary')
    expect(buffer).toEqual(file)
  )

  it("click on position", ->
    game_engine = new GameEngine()
    expect(game_engine.clickOnPosition(0 ,0)).toEqual(new Position(0, 0))
  )
)
