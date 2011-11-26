if exports?
  Canvas = require('canvas')
  Map = require('../src/map').Map
  Tiles = require('../src/tiles').Tiles
  Position = require('../src/position').Position

class GameEngine
  constructor: () ->
    map = new Map
#    (new Tiles).getGrass().onload = () ->
    console.log('fuck')

    if not exports?
      @canvas = $('#game_surface')[0]
    else
      Canvas = require('canvas')
      @canvas = new Canvas(1260,660)
    console.log(@canvas)
    context = @canvas.getContext('2d')
    for num in [0..20]
      for innerNum in [0..11]
        context.drawImage(map.getTilesAtPosition(new Position(num, innerNum)), num * 60, innerNum * 60)

root = exports ? this
root.GameEngine = GameEngine