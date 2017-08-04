#!/usr/bin/env coffee
require 'shelljs/make'
echo = console.log
dd = require 'ddeyes'
{
  StyleSheet
  css
} = require 'glamor/aphrodite'

g_css = (require 'glamor').css

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
  dd flex()

target.grid = ->
  dd grid()

target.display = ->
  dd display()

target.position = ->
  dd position()

target.spacing = ->
  dd spacing()

target.float = ->
  dd float()

target.overflow = ->
  dd overflow()

target.border = ->
  dd border()

target.borderRadius = ->
  dd borderRadius()

target.beardColors = ->
  dd beardColors()

target.zIndex = ->
  dd zIndex()

target.fonts = ->
  dd fontFamily {}
  ,
    fonts:
      sans: "Helvetica Neue, Helvetica, Arial, sans-serif"
      serif: "Merriweather, Georgia, serif"
      code: "Consolas, Monaco, 'Andale Mono', monospace"

target.fontSize = ->
  dd fontSize()

target.fontWeight = ->
  dd fontWeight()
        
target.textAlignment = ->
  dd textAlignment()
      
target.textDecoration = ->
  dd textDecoration()

target.lineHeight = ->
  dd lineHeight()

target.letterSpacing = ->
  dd letterSpacing()

target.colors = ->
  dd colors {}
  ,
    colors: beardColors()

target.misc = ->
  dd misc()
