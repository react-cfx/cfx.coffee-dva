import React from "react"

import Highlight from "react-highlight"

import { prefixDom } from 'cfx.dom'
import nb from '../nb'

import H1 from '../components/H1'
import H2 from '../components/H2'
import H3 from '../components/H3'
import Code from '../components/Code'
import Copy from '../components/Copy'


CFX = prefixDom {
  default:{
    'div'
    'a'
    'span'
  }
  H1
  H2
  H3
  Code
  Copy
  Highlight
}

##
  # Overview Page
  ##

snippet = """
import React from "react"
// ES6 Modules and CommonJS compatible
import Neckbeard from "neckbeard"
const settings = {
    ...Neckbeard.defaultSettings
    // Overwrite settings here
}
// Instantiates Neckbeard and returns a function
// that accepts a string of approved helpers.
const nb = Neckbeard.create(settings)
const Button = ({ children }) => (
    <button className={ nb("bg1 tcw br3 ft4") }>
        { children }
    </button>
)
export default Button
"""

snippet2 = """
<div className={ nb("bgsuccess bcsuccess br5 pv1 tac tcw mb2 fwthin") }>
    .bgsuccess.bcsuccess.br5.pv1.tac.tcw.mb2.fwthin
</div>
"""

export default Color = =>
  {
    c_div
    c_a
    c_span
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
    ,
      "Colors"
      c_span {
        (nb "tc1 ft3 capitalize fw3 ml1")...
      },'Not Responsive'
    c_div {
      (nb "mb2")...
    }
    ,
      c_div {
        (nb "frame xmh")...
      }
      ,
        c_div {
          (nb "blk6 xph")...
        }
        ,
          c_div {
            (nb "pv2 ph1 ft2 flex jcc bgsuccess tcw")...
          },".bgsuccess"
