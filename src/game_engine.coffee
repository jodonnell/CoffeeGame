root = exports ? this

if exports?
  root.Hero = require('../src/hero').Hero
  fs = require('fs')


class GameEngine
  constructor: () ->
    @hero = new root.Hero()
    # create onloads

    if window?
      @canvas = $('#game_surface')[0]
    else
      Canvas = require('canvas')
      @canvas = new Canvas(1260,660)

    @context = @canvas.getContext('2d')

  drawScreen: () ->


root.GameEngine = GameEngine