class GameEngine
  constructor: () ->
    tiles = new window.Tiles
    tiles.getGrass().onload = () ->
      canvas = $('#game_surface')[0]
      context = canvas.getContext('2d')
      context.drawImage(tiles.getGrass(), 0, 0)

root = exports ? this
root.GameEngine = GameEngine