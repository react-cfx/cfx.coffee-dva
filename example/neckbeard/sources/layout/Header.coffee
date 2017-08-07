import React, { Component } from 'react'
import { prefixDom } from '../lib/coffee-dva/rw/Components'
import * as Neckbeard from '../lib/coffee-dva/style'
nb = Neckbeard.create {}

CFX = prefixDom {
  default: {
    'div'
    'a'
  }
}

##
 # Header
 ##
export default class Header extends Component

  componentDidMount: ->
    taglines = [
      "An Atomic CSS in JS Framework"
      "Javascript all the things"
      "Your kids will thank us"
      "The Future"
      "Pushing it to the next level for future generations"
    ]
    tagline = document.getElementById 'tagline'
    tagline.innerHTML = taglines[Math.floor(Math.random()*taglines.length)]
    return

  render: ->

    {
      c_div
      c_a
    } = CFX

    c_div {
      (nb [
        'bg1'
        'flex'
        'aic'
        'acc'
        'wrap'
        'jcsb'
      ])...
    }
    ,
      c_div {
        (nb 'iflex aic')...
      }
      ,
        c_a {
          # to: '/'
          (nb "fwthin uppercase pv3 mr3 ft17 sans ls3 xtd tcb pointer")...
        }
        , 'Neckbeard'
        c_div {
          id: "tagline"
          (nb [
            'sm-dn', 'md-db'
            'tcb', 'ft3', 'ls1', 'sans'
          ])...
        }
        , 'Default'
      c_div {
        (nb 'md-db lg-dn')...
      }
      ,
        c_a {
          onClick: @props.onMenuToggle
          (nb [
            'sans', 'ft3', 'fwthin', 'uppercase'
            'tcb', 'xtd', 'ls1', 'code', 'brdr1'
            'br3', 'bg2', 'ph1', 'pv05', 'bc5'
            'dim', 'pointer'
          ])...
        }
        , 'Menu'