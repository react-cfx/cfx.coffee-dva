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
  default: {
    'table'
    'thead'
    'tr'
    'th'
    'tbody'
    'td'
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
// Neckbeard.defaultSettings.helpers.borderRadius
{
    "limit": 10,
    "incrementBy": 1,
    "responsive": true
}

"""

snippet2 = """
<div className={ nb("brdr1 br3 bc1 pv1 tac mb2") }>.brdr1.br3.bc1.pv1.mb2</div>
"""

export default BorderRadius = =>
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
    , 'Border Radius'
    ,
      c_span {
        (nb 'tc1 ft3 capitalize fw3 ml1')...
      }
      , 'Responsive'
    c_H2 {}
    , 'Options'
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
          }
          , 'Border Direction'
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          }
          , 'Class Prefix'
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          }
          , 'Default Amounts'
      c_tbody {}
      ,
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , 'Border Radius'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '.br'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '0-10'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , 'Border Left Radius'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '.blr'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '0-10'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , 'Border Right Radius'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '.brr'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '0-10'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , 'Border Top Left Radius'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '.btlr'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '0-10'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , 'Border Top Right Radius'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '.btrr'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '0-10'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , 'Border Bottom Left Radius'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '.bblr'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '0-10'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , 'Border Bottom Right Radius'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '.bbrr'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          , '0-10'
    c_H2 {}
    , 'Example'
    c_Highlight {
      (nb 'mb2 pa2  lh5 ft4')...
    }
    , snippet2
    c_div {
      (nb 'brdr1 br5 bc1 pv1 tac mt2 mb2')...
    }
    , '.brdr1.br5.bc1.pv1.mb2'
    c_H2 {}
    , 'Default Settings'
    c_Copy {}
    , 'See'
    ,
      c_a
        href:"https://www.neckbeardjs.com/usage#configuration"
      , 'Configuration'
    , 'to learn how to overwrite helper settings.'

    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    }
    , snippet
