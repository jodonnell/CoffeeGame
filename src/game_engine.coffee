root = exports ? this

if exports?
  root.Map = require('../src/map').Map
  root.Tiles = require('../src/tiles').Tiles
  root.Position = require('../src/position').Position
  root.PointToPosition = require('../src/point_to_position').PointToPosition
  root.Hero = require('../src/hero').Hero
  fs = require('fs')


class GameEngine
  constructor: () ->
    @map = new root.Map()
    @moveToRects = () ->
    @hero = new root.Hero()
    # create onloads

    if window?
      @canvas = $('#game_surface')[0]
    else
      Canvas = require('canvas')
      @canvas = new Canvas(1260,660)

    @context = @canvas.getContext('2d')

  drawScreen: () ->
    for num in [0..20]
      for innerNum in [0..11]
        @context.drawImage(@map.getTilesAtPosition(new root.Position(num, innerNum)), num * 60, innerNum * 60)

    @context.drawImage((new root.Tiles).hero, @hero.position.getScreenX(), @hero.position.getScreenY())

    @addEffects()

  addEffects: () ->
    @moveToRects()

  click: (x, y) ->
    position = (new root.PointToPosition).convert(x, y)
    if position.getHashKey() == @hero.position.getHashKey()
      @moveToRects = () ->
        @context.fillStyle = "rgba(0, 0, 160, 0.5)"
        @context.fillRect(0,60,60,60)
        @context.fillRect(0,120,60,60)
        @context.fillRect(0,180,60,60)

        @context.fillRect(60,60,60,60)
        @context.fillRect(120,60,60,60)

        @context.fillRect(60,120,60,60)


root.GameEngine = GameEngine