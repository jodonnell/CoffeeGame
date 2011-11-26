class Tiles
  constructor: () ->
    @water = @image()
    @water.src = "images/tileWater.jpg"
    @grass = @image()
    @grass.src = "images/tileGrass.gif"

  getGrass: () ->
    @grass

  getWater: () ->
    @water

  image: () ->
    if window?
      new Image()
    else
      {}

root = exports ? this
root.Tiles = Tiles