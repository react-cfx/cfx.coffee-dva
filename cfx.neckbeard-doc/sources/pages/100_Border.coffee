import React from "react"
import { prefixDom } from 'cfx.dom'
import Highlight from "react-highlight"
import nb from '../nb'

import H1 from '../components/H1'
import H2 from '../components/H2'
import H3 from '../components/H3'
import Code from '../components/Code'
import Copy from '../components/Copy'

CFX = prefixDom {
  default: {
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
  # Overview Page
  ##

snippet ="""
<div className={ nb("brdr1 bc1 pv1 tac mb2") }>.brdr1.bc1.pv1.tac.mb2</div>
"""

snippet2 ="""
// Neckbeard.defaultSettings.helpers.border
{
    "limit": 3,
    "incrementBy": 1,
    "responsive": true
}
"""
export default Border = =>
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
    ,
      'Border'
      c_span {
        (nb 'tc1 ft3 capitalize fw3 ml1')...
      },'Responsive'
    c_H2 {}
    , 'Options'
    c_table {
      (nb 'w100 mb2 ft4 tcg60 lh2 sans')...
    },
      c_thead {}
      ,
        c_tr {
          (nb 'brdr1--bottom bcg10 bgg05')...
        }
        ,
          c_th {
            (nb 'tcg50 fw3 pv1 ph1 tal fwsemibold ph1')...
          },'Class'
          c_th {
            (nb 'tcg50 fw3 pv1 ph1 tal fwsemibold ph1')...
          },'Purpose'
      c_tbody {}
      ,
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        },
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,'.xbrdr'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },'Remove the border from an element'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.brdr1'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },'Add a border to all sides of an element'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,'.brdr1--top'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },'Add a border to the top of an element'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,'.brdr1--right'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Add a border to the right side of an element'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,'.brdr1--bottom'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },'Add a border to the bottom of an element'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,'.brdr1--left'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },'Add a border to the left side of an element'
    c_H2 {}
    ,'Example'
    c_Highlight {
      (nb 'pa2 mb2 lh5 ft4')...
    },snippet
    c_div {
      (nb 'brdr1 bc1 pv1 tac mt2 mb2')...
    },'.brdr1.bc1.pv1.tac.mb2'
    c_H2 {}
    ,'Default Settings'

    c_Copy {}
    ,
      'See'
    ,
      c_a {
        (nb 'tc5 xtd h-tc1')...
        href:"https://www.neckbeardjs.com/usage#configuration"
      },'Configuration'
    ,'to learn how to overwrite helper settings.'

    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    },snippet2
