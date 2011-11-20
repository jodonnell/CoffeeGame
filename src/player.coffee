Position = require('../src/position').Position

class Player
  constructor: (@position) ->

  getPosition: () ->
    @position

  canMove: () ->
    positions = [new Position(@position.getX() - 2, @position.getY() - 0)
    new Position(@position.getX() - 0, @position.getY() - 2)
    new Position(@position.getX() + 2, @position.getY() + 0)
    new Position(@position.getX() - 0, @position.getY() + 2)

    new Position(@position.getX() - 1, @position.getY() - 1)
    new Position(@position.getX() + 1, @position.getY() + 1)
    new Position(@position.getX() - 1, @position.getY() + 1)
    new Position(@position.getX() + 1, @position.getY() - 1)

    new Position(@position.getX() - 1, @position.getY() - 0)
    new Position(@position.getX() + 1, @position.getY() - 0)
    new Position(@position.getX() - 0, @position.getY() - 1)
    new Position(@position.getX() - 0, @position.getY() + 1)]

    (position for position in positions when @inBounds(position))

  inBounds: (position) ->
    return true if position.getX() >= 0 and position.getY() >= 0
    false

  move: (distance) ->
    2

root = exports ? this
root.Player = Player