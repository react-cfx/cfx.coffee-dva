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
  # Spacing Page
  ##

snippet = """
<div className={ nb("md-pa1 lg-pa3 xlg-pa5 mb2 brdr1 br5 tac") }>
    Different Spacing Depending on Breakpoint
</div>
"""

snippet1 = """
// Neckbeard.defaultSettings.helpers.spacing
{
    "limit": 10,
    "incrementBy": 1,
    "responsive": true
}
"""

export default Spacing = =>
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
    , 'Spacing'
    ,
      c_span {
        (nb 'tc1 ft3 capitalize fw3 ml1')...
      }, 'Responsive'

    c_Copy {}
    , 'The spacing system is set up by default to have 10 increments, each representing 1rem in size. For example, to achieve a'
    ,
      c_Code {}
      , 'margin-top'
    , 'which uses the 2nd step in the spacing scale (2rems by deafult), you would use'
    ,
      c_Code {}
      , '.mt2'
    , 'If you wanted a <Code>padding-left</Code> with the 8th step in the scale, it‘s'
    ,
      c_Code {}
      , '.pl8'

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
          }, 'Name'
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          }, 'Class'
      c_tbody {}
      ,
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Margin All'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.ma'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Margin Vertical'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.mv'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Margin Horizontal'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.mh'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Margin Top'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.mt'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Margin Right'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.mr'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Margin Bottom'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.mb'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Margin Left'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.ml'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Padding All'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.pa'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Padding Vertical'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.pv'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Padding Horizontal'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.ph'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Padding Top'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.pt'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Padding Right'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.pr'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Padding Bottom'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.pb'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }, 'Padding Left'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , '.pl'

    c_H2 {}
    , 'Example'
    c_Highlight {
      (nb 'pa2 mb2 lh5 ft4')...
    },snippet

    c_div {
      (nb 'md-pa1 lg-pa3 xlg-pa5 mt2 mb2 brdr1 br5 tac')...
    }, 'Different Spacing Depending on Breakpoint'

    c_H2 {}
    , 'Default Settings'

    c_Copy {}
    , 'See'
    ,
      c_a {
        (nb 'tc5 xtd h-tc1')...
        href:'https://www.neckbeardjs.com/usage#configuration'
      }, 'Configuration'
    , 'to learn how to overwrite helper settings.'

    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    },snippet1
