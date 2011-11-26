zombie = require("zombie")
browser = new zombie.Browser()
GameEngine = require('../src/game_engine').GameEngine

describe("GameEngine", ->
  # it("has the right title set", ->
  #   whenPageHasLoaded( () ->
  #     expect(browser.text("title")).toBe("Game")
  #     jasmine.asyncSpecDone()
  #   )
  # )

  # it("has the canvas tag", ->
  #   whenPageHasLoaded( () ->
  #     console.log(browser.body.querySelector("#game_surface")[0].toDataURL)
  #     expect(browser.body.querySelector("#game_surface")).toBeDefined()
  #     baby = browser.body.querySelector("#game_surface")[0].toDataURL('image/png')
  #     console.log(baby)
  #     jasmine.asyncSpecDone()
  #   )
  # )

  # whenPageHasLoaded = (callback) ->
  #   browser.visit('http://localhost:8000/', (error, browser, status) ->
  #     callback.call()
  #   )
  #   jasmine.asyncSpecWait()

  it("blah", ->
    game_engine = new GameEngine()
  )
)
