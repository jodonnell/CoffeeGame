class GameEngine
  constructor: () ->
    images = new window.Images
    canvas = $('#game_surface')[0]
    context = canvas.getContext('2d')
    context.drawImage(images.grass, 0, 0)

root = exports ? this
root.GameEngine = GameEngine