class GameEngine
  constructor: () ->
    map = new Map
    (new Tiles).getGrass().onload = () ->
      canvas = $('#game_surface')[0]
      context = canvas.getContext('2d')

      for num in [0..20]
        for innerNum in [0..11]
          context.drawImage(map.getTilesAtPosition(new Position(num, innerNum)), num * 60, innerNum * 60)

root = exports ? this
root.GameEngine = GameEngine