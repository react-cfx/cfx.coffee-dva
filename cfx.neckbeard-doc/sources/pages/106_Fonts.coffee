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
  # Fonts Page
  ##

snippet = """
<div className={ nb("md-dn mb2 brdr1 br5 tac pv1") }>
    Show content on small to medium breakpoint
</div>
<div className={ nb("dn md-db mb2 brdr1 br5 tac pv1") }>
    Show content on large breakpoint
</div>
"""
snippet1 = """
// Neckbeard.defaultSettings.fonts
{
    "sans": "Helvetica Neue, Helvetica, Arial, sans-serif",
    "serif": "Merriweather, Georgia, serif",
    "code": "Consolas, Monaco, 'Andale Mono', monospace"
}
"""
snippet2 = """
// Neckbeard.defaultSettings.helpers.fontFamily
{
    "responsive": false
}
"""
snippet3 = """
// Neckbeard.defaultSettings.helpers.fontWeight
{
    "responsive": false
}
"""

snippet4 = """
// Neckbeard.defaultSettings.helpers.fontSize
{
    "limit": 17,
    "incrementBy": 0.1,
    "responsive": true
}
"""




export default Fonts = =>
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
    ,' Fonts'

    c_div {
      (nb 'mb1')...
    }
    ,
      c_H3 {}
      ,' Font Family Helpers'
      ,
        c_span {
          (nb 'tc1 ft3 capitalize fw3 ml1')...
        }
        ,' Not Responsive'
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
            (nb 'pa1 tal fwsemibold')...
          },' Style'
          c_th {
            (nb 'pa1 tal fwsemibold')...
          },' Class'
          c_th {
            (nb 'pa1 tal fwsemibold')...
          },' Default Stack'

      c_tbody {}
      ,
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Sans Serif'

          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .sans'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' "Helvetica Neue", Helvetica, Arial, sans-serif'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Serif'

          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .serif'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' Merriweather, Georgia, serif'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Code'

          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .code'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' Consolas, Monaco, "Andale Mono", monospace'

    c_div {
      (nb 'mb1')...
    }
    ,
      c_H3 {}
      ,' Font Weight Helpers'
      ,
        c_span {
          (nb 'tc1 ft3 capitalize fw3 ml1')...
        },' Not Responsive'
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
            (nb 'pa1 tal fwsemibold')...
          },' Style'
          c_th {
            (nb 'pa1 tal fwsemibold')...
          },' Class'
          c_th {
            (nb 'pa1 tal fwsemibold')...
          },' Default Stack'

      c_tbody {}
      ,
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Thin'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' 100'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fw1'
          ,' or'
          ,
            c_Code {}
            ,' .fwthin'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Extra Light'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' 200'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fw2'
          ,' or'
          ,
            c_Code {}
            ,' .fwxlight'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Light'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' 300'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fw3'
          ,' or'
          ,
            c_Code {}
            ,' .fwlight'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Normal'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' 400'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fw4'
          ,' or'
          ,
            c_Code {}
            ,' .fwnormal'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Medium'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' 500'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fw5'
          ,' or'
          ,
            c_Code {}
            ,' .fwmedium'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Semibold'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' 600'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fw6'
          ,' or'
          ,
            c_Code {}
            ,' .fwsemibold'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Bold'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' 700'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fw7'
          ,' or'
          ,
            c_Code {}
            ,' .fwbold'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Extra Bold'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' 800'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fw8'
          ,' or'
          ,
            c_Code {}
            ,' .fwxbold'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          },' Black'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' 900'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fw9'
          ,' or'
          ,
            c_Code {}
            ,' .fwblack'

    c_div {
      (nb 'mb1')...
    }
    ,' Font Size Helpers'
    ,
      c_span {
        (nb 'tc1 ft3 capitalize fw3 ml1')...
      },' Responsive'

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
            (nb 'pa1 tal fwsemibold')...
          },' Style'
          c_th {
            (nb 'pa1 tal fwsemibold')...
          },' Class'
          c_th {
            (nb 'pv1 tal fwsemibold')...
          },' Default Stack'

      c_tbody {}
      ,
        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 1'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft1'
          c_td {
            (nb 'vam pv1 ft1')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 2'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft2'
          c_td {
            (nb 'vam pv1 ft2')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 3'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft3'
          c_td {
            (nb 'vam pv1 ft3')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 4'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft4'
          c_td {
            (nb 'vam pv1 ft4')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 5'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft5'
          c_td {
            (nb 'vam pv1 ft5')...
          },' Hi'



        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 6'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft6'
          c_td {
            (nb 'vam pv1 ft6')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 7'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft7'
          c_td {
            (nb 'vam pv1 ft7')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 8'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft8'
          c_td {
            (nb 'vam pv1 ft8')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 9'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft9'
          c_td {
            (nb 'vam pv1 ft9')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 10'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft10'
          c_td {
            (nb 'vam pv1 ft10')...
          },' Hi'


        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 11'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft11'
          c_td {
            (nb 'vam pv1 ft11')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 12'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft12'
          c_td {
            (nb 'vam pv1 ft12')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 13'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft13'
          c_td {
            (nb 'vam pv1 ft13')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 14'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft14'
          c_td {
            (nb 'vam pv1 ft14')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 15'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft15'
          c_td {
            (nb 'vam pv1 ft15')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 16'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft16'
          c_td {
            (nb 'vam pv1 ft16')...
          },' Hi'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          },' Font Level 17'
          c_td {
            (nb 'tcg50 fw3 pv1 ph1 vam')...
          }
          ,
            c_Code {}
            ,' .ft17'
          c_td {
            (nb 'vam pv1 ft17')...
          },' Hi'

    c_H2 {}
    ,' Default Settings'

    c_Copy {}
    ,' See'
    ,
      c_a {
        (nb 'tc5 xtd h-tc1')...
        href:'https://www.neckbeardjs.com/usage#configuration'
      },' Configuration'
    ,' to learn how to overwrite helper settings.'

    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    },snippet1
    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    },snippet2
    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    },snippet3
    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    },snippet4
