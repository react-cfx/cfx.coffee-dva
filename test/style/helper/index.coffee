#!/usr/bin/env coffee
require 'shelljs/make'
echo = console.log
dd = require 'ddeyes'
{ gdf } = require 'coffee-require'
require 'coffee-require/register'

border = gdf require '../../../src/style/helper/border'
spacing = gdf require '../../../src/style/helper/spacing'

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
