class Images
  constructor: () ->
    @grass = new Image();
    @grass.src = "images/tileGrass.gif"

  getGrass: () ->
    @grass

root = exports ? this
root.Images = Images