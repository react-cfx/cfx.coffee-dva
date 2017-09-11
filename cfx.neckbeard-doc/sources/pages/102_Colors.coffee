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
    'table'
    'thead'
    'tbody'
    'th'
    'tr'
    'td'
    'input'
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

snippet3 ="""
// Neckbeard.defaultSettings.colors
{
    "brandColor": "#c397d8",
    "b": "#000000",
    "w": "#ffffff",
    "success": "#b9ca4a",
    "warning": "#e78c45",
    "danger": "#d54e53",
    "g05": "#f2f2f2",
    "g10": "#e6e6e6",
    "g20": "#cccccc",
    "g30": "#b3b3b3",
    "g40": "#999999",
    "g50": "#808080",
    "g60": "#666666",
    "g70": "#4d4d4d",
    "g80": "#333333",
    "g90": "#1a1a1a",
    "brandColor2": "#b98fcd",
    "brandColor3": "#b088c3",
    "brandColor4": "#a781b9",
    "brandColor5": "#9f7bb0"
}

"""

snippet4 = """
// Neckbeard.defaultSettings.helpers.colors
{
    "responsive": false
}

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
    c_table
    c_thead
    c_tr
    c_th
    c_tbody
    c_td
    c_input
  } = CFX


  disfixe =
    style:
      display:'flex'
      flexWrap:'wrap'

  flexB =
    style:
      flexBasis:'50%'

  c_div {}
  ,
    c_H1 {}
    ,
      "Colors"
      c_span {
        (nb "tc1 ft3 capitalize fw3 ml1")...
      }
      , 'Not Responsive'
    c_div {
      (nb "mb2")...
    }
    ,
      c_div {
        (nb "frame xmh")...
        disfixe...
      }
      ,
        c_div {
          (nb "blk6 xph")...
          flexB...
        }
        ,
          c_div {
            (nb "pv2 ph1 ft2 flex jcc bgsuccess tcw")...
          }
          , ".bgsuccess"
        c_div {
          (nb 'blk6 xph')...
          flexB...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcsuccess')...
          }
          , 'tcsuccess'
        c_div {
          (nb 'blk6 xph')...
          flexB...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgwarning tcw')...
          }
          , '.bgwarning'
        c_div {
          (nb 'blk6 xph')...
          flexB...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcwarning')...
          }
          , '.tcwarning'

        c_div {
          (nb 'blk6 xph')...
          flexB...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgdanger tcw')...
          }
          , '.bgdanger'
        c_div {
          (nb 'blk6 xph')...
          flexB...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcdanger')...
          }
          , '.tcdanger'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bg1 tcw')...
          }
          , 'bg1'

        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bg2 tcw')...
          }
          , '.bg2'

        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bg3 tcw')...
          }
          , '.bg3'

        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bg4 tcw')...
          }
          , '.bg4'

        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bg5 tcw')...
          }
          , '.bg5'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tc1')...
          }
          , '.tc1'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tc2')...
          }
          , '.tc2'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tc3')...
          }
          , '.tc3'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tc4')...
          }
          , '.tc4'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tc5')...
          }
          , '.tc5'
      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg brdr1 bc1')...
          }
          , '.bc1'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg brdr1 bc2')...
          }
          , '.bc2'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg brdr1 bc3')...
          }
          , '.bc3'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg brdr1 bc4')...
          }
          , '.bc4'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg brdr1 bc5')...
          }
          , '.bc5'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgw tcg40')...
          }
          , '.bgw'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg40 tcw')...
          }
          , '.tcw'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc brdr1 bcw xbg tcg40')...
          }
          , '.bcw'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg05 tcg60')...
          }
          , '.bgg05'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg10 tcg60')...
          }
          , '.bgg10'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg20 tcg60')...
          }
          , '.bgg20'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg30 tcw')...
          }
          , '.bgg30'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg40 tcw')...
          }
          , '.bgg40'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg50 tcw')...
          }
          , '.bgg50'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg60 tcw')...
          }
          , '.bgg60'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg70 tcw')...
          }
          , '.bgg70'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg80 tcw')...
          }
          , '.bgg80'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg90 tcw')...
          }
          , '.bgg90'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgb tcw')...
          }
          , '.bgb'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc bgg20 tcg05')...
          }
          , 'tcg05'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg10')...
          }
          , '.tcg10'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg20')...
          }
          , '.tcg20'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg30')...
          }
          , '.tcg30'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40')...
          }
          , '.tcg40'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg50')...
          }
          , '.tcg50'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg60')...
          }
          , '.tcg60'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg70')...
          }
          , '.tcg70'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg80')...
          }
          , '.tcg80'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg90')...
          }
          , '.tcg90'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcb')...
          }
          , '.tcb'

      c_div {
        (nb 'frame xmh')...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcg05')...
          }
          , 'bcg05'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcg10')...
          }
          , '.bcg10'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcg20')...
          }
          , '.bcg20'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcg30')...
          }
          , '.bcg30'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcg40')...
          }
          , '.bcg40'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcg50')...
          }
          , '.bcg50'

      c_div {
        (nb 'frame xmh')...
        disfixe...
      }
      ,
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcg60')...
          }
          , '.bcg60'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcg70')...
          }
          , '.bcg70'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcg80')...
          }
          , '.bcg80'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcg90')...
          }
          , '.bcg90'
        c_div {
          (nb 'blk xph')...
        }
        ,
          c_div {
            (nb 'pv2 ph1 ft2 flex jcc xbg tcg40 brdr1 bcb')...
          }
          , '.bcb'

    c_H2 {}
    , 'Hover, Focus, and Active Color Helpers'
    c_Copy {}
    , "Neckbeard's color helper system allows you to use hover, focus, and active colors, using a special syntax. Beard can transition any color to any other color in the system, which makes these helpers real timesavers."
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
          , 'Prefix'
          c_th {
            (nb 'pa1 tal fwsemibold ph1')...
          }
          , 'Purpose'
          c_th {
            (nb '"pv1 only-sm-dn')...
          }
          , 'Example'
          c_th {
            (nb 'pv1 only-sm-dn')...
          }
          , 'Demo'
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
            , 'h-'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , 'Hover'
          c_td {
            (nb 'only-sm-dn ph1')...
          }
          ,
            c_Code {}
            , 'class="tc1 h-tcdanger"'
          c_td {
            (nb 'only-sm-dn')...
          }
          ,
            c_span {
              (nb 'pointer tc1 h-tcdanger ft2')...
            }
            , 'Sample link hover text'

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , 'f-'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , 'Focus'
          c_td {
            (nb 'only-sm-dn ph1')...
          }
          ,
            c_Code {}
            , 'class="bcg20 f-bc1"'
          c_td {
            (nb 'only-sm-dn pv1 tcg60 f-tcdanger')...
          }
          ,
            c_input {
              (nb 'brdr1 bcg20 f-bc1 pv05 ph1 ft4')...
              placeholder:"Focus this input"
            }

        c_tr {
          (nb 'brdr1--bottom bcg10')...
        }
        ,
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , 'a-'
          c_td {
            (nb 'tcg50 fw3 pv2 ph1')...
          }
          ,
            c_Code {}
            , 'Active'
          c_td {
            (nb 'only-sm-dn ph1')...
          }
          ,
            c_Code {}
            , 'className="bgg05 tcg40 a-bg1 a-tcw"'

          c_td {
            (nb 'only-sm-dn pv1 tcg60')...
          }
          ,
            c_a {
              (nb 'pointer bgg05 tcg40 a-bg1 a-tcw ph1 pv05 ft3 ls1')...
            }
            , 'Click Me'
    c_H2 {}
    , 'Example'
    c_Highlight {
      (nb 'pa2 mb2 lh5 ft4')...
    }
    , snippet2

    c_div {
      (nb 'bgsuccess bcsuccess br5 pv1 ft2 tac tcw mt2 mb2 fwthin')...
    }
    , '.bgsuccess.bcsuccess.br5.pv1.tac.tcw.mb2.fwthin'

    c_H2 {}
    , 'Default Settings'

    c_Copy {}
    , 'See'
    ,
      c_a {
        (nb 'tc5 xtd h-tc1')...
      }
      , 'Configuration'
    , 'to learn how to overwrite helper settings.'

    c_Highlight {
      (nb 'pa2 mb2 lh5 ft4')...
    }
    , snippet3

    c_Highlight {
      (nb 'pa2 lh5 ft4')...
    }
    , snippet4
