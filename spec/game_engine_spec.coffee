GameEngine = require('../src/game_engine').GameEngine
fs = require("fs")

describe("GameEngine", ->
  it("testing map images are the same", ->
    game_engine = new GameEngine()
    buffer = game_engine.canvas.toBuffer().toString('binary')
    file = fs.readFileSync('/Users/jacobodonnell/programming/coffee/spec/fixtures/map_load.jpg').toString('binary')
    expect(buffer).toEqual(file)
  )
)
