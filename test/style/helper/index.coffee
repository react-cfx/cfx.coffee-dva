#!/usr/bin/env coffee
require 'shelljs/make'
echo = console.log
dd = require 'ddeyes'
jf = require 'jsonfile'
{
  StyleSheet
  css
} = require 'glamor/aphrodite'

g_css = (require 'glamor').css

{ gdf } = require 'coffee-require'
require 'coffee-require/register'
{
  getAllSelectorsByGroup
  getAllSelectors
} = require '../../../src/style/utils/allSelectors'
beardColors = gdf require '../../../src/style/utils/setBeardColors'
config = gdf require '../../../src/style/config'
helpers = require '../../../src/style/helper'
Neckbeard = require '../../../src/style'


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

} = helpers

target.all = ->
  style =
    red:
      color: 'red'
    hoverBlue:
      ':hover':
        color: 'blue'
  dd { style }
  dd css: css(
    (StyleSheet.create style).red
    (StyleSheet.create style).hoverBlue
  )
  dd g_css: g_css {
    style.red... 
    style.hoverBlue...
  }

target.flex = ->
  dd flex config.helpers.flex

target.grid = ->
  dd grid config.helpers.grid

target.display = ->
  dd display config.helpers.display

target.position = ->
  dd position config.helpers.position

target.spacing = ->
  dd spacing config.helpers.spacing

target.float = ->
  dd float config.helpers.float

target.overflow = ->
  dd overflow config.helpers.float

target.border = ->
  dd border config.helpers.border

target.borderRadius = ->
  dd borderRadius config.helpers.borderRadius

target.zIndex = ->
  dd zIndex config.helpers.zIndex

target.fonts = ->
  dd fontFamily {
    (config.helpers.fontFamily)...
    fonts:
      sans: "Helvetica Neue, Helvetica, Arial, sans-serif"
      serif: "Merriweather, Georgia, serif"
      code: "Consolas, Monaco, 'Andale Mono', monospace"
  }

target.fontSize = ->
  dd fontSize config.helpers.fontSize

target.fontWeight = ->
  dd fontWeight config.helpers.fontWeig
        
target.textAlignment = ->
  dd textAlignment config.helpers.textAlignment

target.textDecoration = ->
  dd textDecoration config.helpers.textDecoration

target.lineHeight = ->
  dd lineHeight config.helpers.lineHeight

target.letterSpacing = ->
  dd letterSpacing config.helpers.letterSpacing

target.beardColors = ->
  dd beardColors()

target.colors = ->
  dd colors {
    (config.helpers.colors)... 
    colors: beardColors()
  }

target.misc = ->
  dd misc config.helpers.misc

target.allSelectorsGroup = ->
  data = getAllSelectorsByGroup config, helpers
  jf.writeFileSync './AllSelectorsGroup.json', data
  , spaces: 2

target.allSelectors = ->
  allSelectorsGroup = getAllSelectorsByGroup config, helpers
  dd getAllSelectors allSelectorsGroup
  dd (getAllSelectors allSelectorsGroup)._group

target.nb = ->
  nb = Neckbeard.create
    debug: true
  dd (
    nb 'ft10 pt1 pb2'
    , debug: true
  )
  dd nb 'ft10 pt1 pb2'

  nb = Neckbeard.create
    useGlamor: false
  dd (
    nb 'ft10 pt1 pb2'
    , debug: true
  )
  dd nb 'ft10 pt1 pb2'

target.print = ->
  nb = Neckbeard.create
    debug: true
  dd (
    nb 'flex sm-fdc md-fdr md-jcsb'
    , debug: true
  )
