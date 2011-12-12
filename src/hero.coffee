root = exports ? this

if exports?
  root.Position = require('../src/position').Position

class Hero
  constructor: (x, y) ->
    @position = new root.Position(0, 0)

root.Hero = Hero