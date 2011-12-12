GameEngine = require('../src/game_engine').GameEngine
Position = require('../src/position').Position
fs = require("fs")

describe("GameEngine", ->
  it("testing map images are the same", ->
    game_engine = new GameEngine()
    game_engine.drawScreen()
    matchesFile(game_engine, '/Users/jacobodonnell/programming/coffee/spec/fixtures/map_load.jpg')
  )

  it("click on your guy opens move", ->
    game_engine = new GameEngine()
    game_engine.click(0, 0)
    game_engine.drawScreen()
    matchesFile(game_engine, '/Users/jacobodonnell/programming/coffee/spec/fixtures/move.jpg')
  )

  it("click off your guy does nothing", ->
    game_engine = new GameEngine()
    game_engine.click(120, 120)
    game_engine.drawScreen()
    matchesFile(game_engine, '/Users/jacobodonnell/programming/coffee/spec/fixtures/map_load.jpg')
  )

  matchesFile = (game_engine, file_path) ->
    buffer = game_engine.canvas.toBuffer().toString('binary')
    file = fs.readFileSync(file_path).toString('binary')
    expect(buffer).toEqual(file)
)
