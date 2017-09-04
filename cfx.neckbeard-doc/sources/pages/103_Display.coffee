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
  # Display Page
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
// Neckbeard.defaultSettings.helpers.display
{
    "responsive": true
}
"""

export default Display = =>
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

  pd =
    style:
      padding:'30px 36px'

  c_div {
    pd...
  }
  ,
    c_H1 {}
    ,' Display'
    , c_span {
        (nb "tc1 ft3 capitalize fw3 ml1")...
      }
      ,' Responsive'
    c_H2 {}
    ,' Options'
    c_table {
      (nb "w100 mb2 ft4 tcg60 lh2 sans")...
    }
    ,
      c_thead {}
      ,
        c_tr {
          (nb "brdr1--bottom bcg10 bgg05")...
        }
        ,
          c_th {
            (nb "pa1 tal fwsemibold ph1")...
          }
          , ' Name'
          c_th {
            (nb "pa1 tal fwsemibold ph1")...
          }
          , 'Class'
      c_tbody {}
      ,
        c_tr {
          (nb "brdr1--bottom bcg10")...
        }
        ,
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , 'Display Block'
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , '.db'
        c_tr {
          (nb "brdr1--bottom bcg10")...
        }
        ,
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , 'Display Inline'
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , '.di'

        c_tr {
          (nb "brdr1--bottom bcg10")...
        }
        ,
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , 'Display Inline-block'
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , '.dib'

        c_tr {
          (nb "brdr1--bottom bcg10")...
        }
        ,
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , 'Display None'
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , '.dn'

        c_tr {
          (nb "brdr1--bottom bcg10")...
        }
        ,
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , 'Full Width'
          ,
            c_span {
              (nb "tc1 ft4 fw3 ml1")...
            }
            , 'Not Responsive'
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }, '.full'

        c_tr {
          (nb "brdr1--bottom bcg10")...
        }
        ,
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , 'w100'
          ,
            c_span {
              (nb "tc1 ft4 fw3 ml1")...
            }
            , 'Not Responsive'
          c_td {
            (nb "tcg50 fw3 pv2 ph1")...
          }
          , '.w100'
    c_H2 {}
    , "Example"

    c_Highlight {
      (nb "pa2 mb2 lh5 ft4")...
    }
    , snippet

    c_div {
      (nb "md-dn mb2 brdr1 br5 tac pv1")...
    },"Show content on small to medium breakpoint"

    c_div {
      (nb "dn md-db mb2 brdr1 br5 tac pv1")...
    },"Show content on large breakpoint"

    c_H2 {}
    , "Default Settings"

    c_Copy {}
    , "See"
    ,
      c_a {
        href:'https://www.neckbeardjs.com/usage#configuration'
      }
      , "Configuration"
    , 'to learn how to overwrite helper settings.'
    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    }
    , snippet2
