root = exports ? this

if exports?
  Canvas = require('canvas')
  root.Map = require('../src/map').Map
  root.Tiles = require('../src/tiles').Tiles
  root.Position = require('../src/position').Position
  fs = require('fs')


class GameEngine
  constructor: () ->
    map = new root.Map()
#    (new Tiles).getGrass().onload = () ->

    if window?
      @canvas = $('#game_surface')[0]
    else
      Canvas = require('canvas')
      @canvas = new Canvas(1260,660)

    context = @canvas.getContext('2d')
    for num in [0..20]
      for innerNum in [0..11]
        context.drawImage(map.getTilesAtPosition(new root.Position(num, innerNum)), num * 60, innerNum * 60)

    #buffer = @canvas.toBuffer()
    #fs.writeFileSync('/Users/jacobodonnell/programming/coffee/cookie2.jpg', buffer)



root.GameEngine = GameEngine