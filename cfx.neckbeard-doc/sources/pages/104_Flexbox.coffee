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
  # Flexbox Page
  ##

snippet = """
<div className={ nb("flex jcc aic absolute h100 w100 brdr1 bc1 br5") }>
    <span className={ nb("ft5 tc1 tac fwthin") }>
        Vertical and Horizontal Centering
    </span>
</div>
"""

snippet2 = """
// Neckbeard.defaultSettings.helpers.flex
{
    "responsive": true
}
"""

export default Flexbox = =>
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
      'Flexbox'
    ,
      c_span {
        (nb 'tc1 ft3 capitalize fw3 ml1')...
      }
      ,
        'Responsive'
    c_H2 {}
    ,
      'Options'

    c_table {
      (nb 'w100 mb2 ft4 tcg60 lh2 sans')...
    }
    ,
      c_thead {}
        c_tr {
          (nb 'brdr1--bottom bcg10 bgg05')...
        }
        ,
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          },' Class'
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          },' Value'
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
            ,' .flex'
          ,' or'
          ,
            c_Code {}
            ,' .df'

          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' display: flex'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .iflex'

          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' display: inline-flex'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .flex-grow'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' flex-grow: 1'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fb100'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' flex-basis: 100%'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fdr'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' flex-direction: row'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fdrr'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' flex-direction: row-reverse'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fdc'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' flex-direction: column'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .fdcr'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' flex-direction: column-reverse'

    c_div {
      (nb 'mb1')...
    }
    ,
      c_H3 {}
      ,' Content Justification'

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
          },' Class'
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          },' Value'

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
            ,' jcc'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' jjustify-content: center'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .jcsb'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' justify-content: space-between'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .jcsa'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' justify-content: space-around'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .jcfs'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' justify-content: flex-start'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .jcfe'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' justify-content: flex-end'

    c_div {
      (nb 'mb1')...
    }
    ,
      c_H3 {}
      ,' Item Alignment'

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
          },' Class'

          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          },' Value'

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
            ,' .aic'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' align-items: center'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .aifs'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' align-items: flex-start'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .aife'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' align-items: flex-end'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .ais'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' align-items: stretch'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .aib'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' align-items: baseline'

    c_div {
      (nb 'mb1')...
    }
    ,
      c_H3 {}
      ,' Content Alignment'

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
          },' Class'
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          },' Value'

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
            ,' .acc'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' align-content: center'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .acfs'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' align-content: flex-start'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .acfe'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' align-content: flex-end'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .acs'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' align-content: stretch'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' .acb'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            ,' align-content: baseline'

    c_H2 {}
    ,' Example'
    c_Highlight
      className:"#{nb 'pa2 mb2 lh5 ft4'}"
      snippet

    c_div {
      (nb 'relative mb2')...
      style:`{'height':100}`
    },

      c_div {
        (nb 'flex jcc aic absolute h100 w100 brdr1 bc1 br5')...
      }
      ,
        c_span {
          (nb 'ft5 tc1 tac fwthin')...
        },' Vertical and Horizontal Centering'

    c_H2 {}
    ,' Default Settings'

    c_Copy {}
    ,
      'See'
    ,
      c_a
        href:'https://www.neckbeardjs.com/usage#configuration'
        'Configuration'
    ,
      'to learn how to overwrite helper settings.'

    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    }
    ,
      snippet2
