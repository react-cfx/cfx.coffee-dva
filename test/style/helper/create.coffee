#!/usr/bin/env coffee
require 'shelljs/make'
echo = console.log
dd = require 'ddeyes'
{ gdf } = require 'coffee-require'
{
  StyleSheet
  css
} = require 'glamor/aphrodite'
require 'coffee-require/register'

defaultConfig = gdf require '../../../src/style/config'
# setBeardColors = gdf require '../../../src/style/utils/setBeardColors'

##
 # Neckbeard Imported Helpers
 ##
helpers = require '../../../src/style/helper'

helperFns = helpers
settings = defaultConfig

allSelectors = Object
.keys helperFns
.map (fnKey) =>
  if fnKey is 'display'
    # dd settings.helpers[fnKey]
    dd helperFns[fnKey] settings
    # dd StyleSheet.create helperFns[fnKey] settings
  # dd { fnKey }
  helperFns[fnKey] settings
.reduce (previous, current) =>
  { previous..., current... }
