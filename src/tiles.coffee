class Tiles
  constructor: () ->
    @grass = new Image();
    @grass.src = "images/tileGrass.gif"

  getGrass: () ->
    @grass

root = exports ? this
root.Tiles = Tiles