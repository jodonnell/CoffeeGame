if not Image?
   class Image
    constructor: () ->
      @src = ''

class Tiles
  constructor: () ->
    @water = new Image();
    @water.src = "images/tileWater.jpg"
    @grass = new Image();
    @grass.src = "images/tileGrass.gif"

  getGrass: () ->
    @grass

  getWater: () ->
    @water

root = exports ? this
root.Tiles = Tiles