#!/usr/bin/env coffee
dd = require 'ddeyes'
require 'coffee-require/register'

{ prefixDom } = require '../src/rw/Components'

dd Object.keys prefixDom
  default: [
    'div'
    'img'
    'h2'
    'p'
  ]

dd Object.keys prefixDom
  default: {
    'div'
    'img'
    'h2'
    'p'
  }
