class Tiles
  constructor: () ->
    @grass = @image()
    @grass.src = @imagePath("images/tileGrass.jpg")

    @water = @image()
    @water.src = @imagePath("images/tileWater.jpg")

  getGrass: () ->
    @grass

  getWater: () ->
    @water

  imagePath: (path) ->
    return path if window?
    fs = require("fs")
    fs.readFileSync(__dirname + '/../' + path)

  image: () ->
    if window?
      new Image()
    else
      Canvas = require('canvas')
      new Canvas.Image

root = exports ? this
root.Tiles = Tiles