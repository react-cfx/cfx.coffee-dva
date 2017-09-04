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
  # Float Page
  ##

snippet = """
<div className={ nb("md-dn mb2 brdr1 br5 tac pv1") }>
    Show content on small to medium breakpoint
</div>
<div className={ nb("dn md-db mb2 brdr1 br5 tac pv1") }>
    Show content on large breakpoint
</div>
"""

snippet2 = """
// Neckbeard.defaultSettings.helpers.float
{
    "responsive": true
}
"""




export default Float = =>
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
      'Float'
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
          , 'Name'
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          }
          , 'Class'

      c_tbody {}
      ,
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.fl'

          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , 'float: left'
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.fr'

          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , 'float: right'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.fn'

          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , 'float: none'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.finit'

          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , 'float: initial'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.finhe'

          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , 'float: inherit'

    c_H2 {}
    , 'Example'
    c_Highlight {
      (nb 'pa2 mb2 lh5 ft4')...
    },snippet

    c_div {
      (nb 'clearfix')...
    }
    ,
      c_div {
        (nb 'md-fl lg-fr mb2 brdr1 br5 tac pv1')...
      }, 'Float right large breakpoint, Float left medium breakpoint.'
    c_H2 {}
    , 'Default Settings'
    c_Copy {}
    , 'See'
    ,
      c_a {
        (nb 'tc5 xtd h-tc1')...
      }, 'Configuration'
    , 'to learn how to overwrite helper settings.'

    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    }
    , snippet2
