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
  # Misc Page
  ##

snippet = """
// Neckbeard.defaultSettings.helpers.misc
{
    "responsive": false,
    "siteWidth": "114rem"
}
"""



export default Misc = =>
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
    , 'Misc'
    ,
      c_span {
        (nb 'tc1 ft3 capitalize fw3 ml1')...
      }, 'Not Responsive'

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
          }, 'Class'
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          }, 'Purpose'
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
            , '.center'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          , 'Center an element using auto margin.'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.default-hover'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          , 'Lower the opacity for an element on its hover state'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.default-active'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          , 'Lower the opacity for an element on its active state'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.dim'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          , 'Apply a combination of .default-hover and .default-active'


        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.site-width'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Set the element's"

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.lowercase'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Transform the text to lowercase"

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.uppercase'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Transform the text to uppercase"

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.ell'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Add an ellipsis when text gets longer than its container"

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.imax'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Allow an image to scale to 100% of its containing element's size"

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.i100'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Set an image's width to 100%"

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.bgcover'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Set an element's background-size to fill up its container proportionally"

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.bgcenter'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Center an element's background"

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.vam'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Vertically align a"
          ,
            c_Code {}
            , 'td'
          ," element's content to the middle"


        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.clearfix'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Apply a classic clearfix to a containing element."

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.hidetext'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Hide text from the viewer, but leave it for search engines and screen readers."

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,
            c_Code {}
            , '.pointer'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1"')...
          }
          ,"Set cursor to pointer on hover."

    c_H2 {}
    , 'Default Settings'

    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    },snippet
