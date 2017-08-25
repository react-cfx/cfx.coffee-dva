#!/usr/bin/env coffee
dd = require 'ddeyes'
jf = require 'jsonfile'
require 'shelljs/make'

require 'coffee-require/register'
button = require '../../../../sources/antd/Components/General/Button/button'

target.all = ->

  dd { button }

  jf.writeFileSync './button.json'
    , button
    , spaces: 2

target.btn = ->
  for i in [
    # 'button'
    'btnDefault'
    # 'btnPrimary'
    # 'btnGhost'
    # 'btnDashed'
    # 'btnDanger'
  ]
    dd button["#{i}"]