import Highlight from "react-highlight"

import { prefixDom } from '../lib/coffee-dva/rw/Components'
import nb from '../nb'

import H1 from '../components/H1'
import H2 from '../components/H2'
import H3 from '../components/H3'
import Code from '../components/Code'
import Copy from '../components/Copy'

CFX = prefixDom {
  default: {
    'div'
  }
  H1
  H2
  H3
  Code
  Copy
  Highlight
}

##
 # Installation Page
 ##
snippet = """
import React from "react"

// ES6 Modules and CommonJS compatible
import Neckbeard from "neckbeard"

// Instantiates Neckbeard and returns a function
// that accepts a string of approved helpers.
const nb = Neckbeard.create()

const Button = ({ children }) => (
    // Pass a string of helper classes
    // to be injected into the page.
    <button className={ nb("bg1 tcw br3 ft4") }>
        { children }
    </button>
)

export default Button
"""

export default Installation = ->
  {
    c_div
    c_H1
    c_H2
    c_H3
    c_Code
    c_Copy
    c_Highlight
  } = CFX

  c_div {}
  ,

    c_H1 {}
    , 'Installation'
    c_Copy {}
    , 'There are several ways of installing the awesome that is Neckbeard:'

    c_H2 {}
    , 'NPM'
    c_Highlight
      className: "#{nb 'pa2 mb2 lh5 ft4'} cmake"
    , '> npm install neckbeard'
    c_Highlight
      className: "#{nb 'pa2 mb2 lh5 ft4'} javascript"
    , snippet

    c_H2 {}
    , 'CDN'
    c_Highlight
      className: "#{nb 'pa2 mb2 lh5 ft4'} html"
    , '<script src="https://unpkg.com/neckbeard"></script>'
    c_Copy {}
    , 'Using the CDN option Neckbeard is added as a global '
    ,
      c_Code {}
      , window.Neckbeard

    c_H2 {}
    , 'No  Magical Unicorn?'
    c_Copy {}
    , "If you don't want to utilize CSS in JS, have no fear, we've exported all the helpers into a CSS file for you. Keep in mind this is a static CSS file and you won't be able to adjust settings."
    c_Highlight
      className: "#{nb 'pa2 mb2 lh5 ft4'} html"
    , '<link href="https://unpkg.com/neckbeard/build/nb.css" rel="stylesheet" />'