root = exports ? this

if exports?
  root.Map = require('../src/map').Map
  root.Tiles = require('../src/tiles').Tiles
  root.Position = require('../src/position').Position
  root.PointToPosition = require('../src/point_to_position').PointToPosition
  fs = require('fs')


class GameEngine
  constructor: () ->
    map = new root.Map()
    # create onloads

    if window?
      @canvas = $('#game_surface')[0]
    else
      Canvas = require('canvas')
      @canvas = new Canvas(1260,660)

    context = @canvas.getContext('2d')
    for num in [0..20]
      for innerNum in [0..11]
        context.drawImage(map.getTilesAtPosition(new root.Position(num, innerNum)), num * 60, innerNum * 60)

    context.drawImage((new root.Tiles).hero, 0, 0)

  clickOnPosition: (x, y) ->
    (new root.PointToPosition).convert(x, y)


root.GameEngine = GameEngine