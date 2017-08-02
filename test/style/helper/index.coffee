#!/usr/bin/env coffee
require 'shelljs/make'
echo = console.log
dd = require 'ddeyes'
{ gdf } = require 'coffee-require'
require 'coffee-require/register'

border = gdf require '../../../src/style/helper/border'
spacing = gdf require '../../../src/style/helper/spacing'
display = gdf require '../../../src/style/helper/display'
beardColors = gdf require '../../../src/style/utils/setBeardColors'
colors = gdf require '../../../src/style/helper/colors'

target.all = ->
  echo 'Hello World!!'

target.border = ->
  dd border
    helpers:
      border: {}

target.spacing = ->
  dd spacing
    helpers:
      spacing:
        incrementBy: 2
        limit: 6

target.display = ->
  dd display
    helpers:
      display: {}

target.beardColors = ->
  dd beardColors()

target.colors = ->
  dd colors
    helpers:
      colors: {}
    colors: beardColors()