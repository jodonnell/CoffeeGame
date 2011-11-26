zombie = require("zombie")
browser = new zombie.Browser()

describe("GameEngine", ->
  it("has the right title set", ->
    whenPageHasLoaded( () ->
      expect(browser.text("title")).toBe("Game")
      jasmine.asyncSpecDone()
    )
  )

  it("has the canvas tag", ->
    whenPageHasLoaded( () ->
      expect(browser.body.querySelector("#game_surface")).toBeDefined()
      jasmine.asyncSpecDone()
    )
  )

  whenPageHasLoaded = (callback) ->
    browser.visit('http://localhost:8000/', (error, browser, status) ->
      callback.call()
    )
    jasmine.asyncSpecWait()
)
