#!/usr/bin/env coffee
require 'shelljs/make'
echo = console.log
dd = require 'ddeyes'
{ gdf } = require 'coffee-require'
require 'coffee-require/register'

{
  # Layout
  flex
  grid 

  # Box
  display
  position
  spacing
  float
  overflow

  # Border
  border
  borderRadius

  zIndex

  # Fonts
  fontFamily
  fontSize
  fontWeight 

  # text

  textAlignment
  textDecoration
  lineHeight
  letterSpacing

  colors

  misc 

} = require '../../../src/style/helper'
beardColors = gdf require '../../../src/style/utils/setBeardColors'

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

target.float = ->
  dd float
    helpers:
      float: {}
    
target.fonts = ->
  dd fontFamily
    helpers:
      fontFamily: {}
    fonts:
      sans: "Helvetica Neue, Helvetica, Arial, sans-serif"
      serif: "Merriweather, Georgia, serif"
      code: "Consolas, Monaco, 'Andale Mono', monospace"

target.fontSize = ->
  dd fontSize
    helpers:
      fontSize:
        limit: 10
        incrementBy: 2

target.fontWeight = ->
  dd fontWeight
    helpers:
      fontWeight: {}

target.letterSpacing = ->
  dd letterSpacing
    helpers:
      letterSpacing:
        limit: 3
        incrementBy: 2

target.lineHeight = ->
  dd lineHeight
    helpers:
      lineHeight:
        limit: 5
        incrementBy: 2

target.overflow = ->
  dd overflow
    helpers:
      overflow: {}

target.misc = ->
  dd misc
    helpers:
      misc:
        siteWidth: 10
        
target.textAlignment = ->
  dd textAlignment
    helpers:
      textAlignment: {}
      
target.textDecoration = ->
  dd textDecoration
    helpers:
      textDecoration: {}

target.zIndex = ->
  dd zIndex
    helpers:
      zIndex:
        limit: 10

target.position = ->
  dd position
    helpers:
      position: {}
      
target.flex = ->
  dd flex
    helpers:
      flex: {}

target.grid = ->
  dd grid
    helpers:
      grid:
        gridGutter: 12
        gridBlockCount: 12
