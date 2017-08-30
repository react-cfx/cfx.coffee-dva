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
  default :{
    'div'
    'table'
    'thead'
    'tbody'
    'th'
    'tr'
    'td'
    'span'
    'a'
  }
  H1
  H2
  H3
  Code
  Copy
  Highlight
}


##
  # TextAlignment Page
  ##

snippet = """
// Neckbeard.defaultSettings.helpers.textAlignment
{
    "responsive": true
}
"""



export default TextAlignment = =>
  {
    c_table
    c_thead
    c_tr
    c_th
    c_tbody
    c_td
    c_div
    c_H1
    c_H2
    c_H3
    c_Code
    c_Copy
    c_Highlight
    c_a
    c_span
  } = CFX

  c_div {}
  ,
    c_H1 {}
    ,'Text Alignment'
    ,
      c_span {
        (nb 'tc1 ft3 capitalize fw3 ml1')...
      },'Responsive'

    c_H2 {}
    ,'Options'

    c_table {
      (nb 'w100 mb2 ft4 tcg60 lh2 sans')...
    }
    ,
      c_thead {}
      ,
        c_tr {
          (nb 'brdr1--bottom bcg10 bgg05')...
        }
        ,
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          },'Name'
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          },'Class'
      c_tbody {}
      ,
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            ,'Text Align Left'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            ,'tal'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            ,'Text Align Center'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            ,'tac'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            ,'Text Align Right'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            ,'tar'

    c_H2 {}
    ,'Default Settings'

    c_Copy {}
    ,'See'
    ,
      c_a {
        (nb 'tc5 xtd h-tc1')...
        href:'https://www.neckbeardjs.com/usage#configuration'
      },'Configuration'
    ,'to learn how to overwrite helper settings.'

    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    },snippet
