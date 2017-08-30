import React from "react"

import Highlight from "react-highlight"

import { prefixDom } from 'cfx.dom'
import nb from '../nb'

import H1 from '../components/H1'
import H2 from '../components/H2'
import H3 from '../components/H3'
import Code from '../components/Code'
import Copy from '../components/Copy'
import BlockQuote from '../components/BlockQuote'

CFX = prefixDom {
  default :{
    'div'
    'span'
    'a'
  }
  H1
  H2
  H3
  Code
  Copy
  Highlight
  BlockQuote
}

##
  # Grid Page
  ##


snippet = """
<div className={ nb("frame mb2") }>
    <div className={ nb("blk md-blk6") }>
        <div className={ nb("bgg05 flex pv1 ph2 jcc aic tcg30 ft3") }>.blk.md-blk6</div>
    </div>
    <div className={ nb("blk md-blk6") }>
        <div className={ nb("bgg05 flex pv1 ph2 jcc aic tcg30 ft3") }>.blk.md-blk6</div>
    </div>
</div>
"""

export default Grid = =>
  {
    c_div
    c_H1
    c_H2
    c_H3
    c_Code
    c_Copy
    c_Highlight
    c_a
    c_span
    c_BlockQuote
  } = CFX

  c_div {}
  ,
    c_H1 {}
    ,'Grid'
    ,
      c_span {
        (nb 'tc1 ft3 capitalize fw3 ml1')...
      },'Responsive'

    c_div {
      (nb 'mb1')...
    }
    ,
      c_H3 {}
      ,'12-column Grid'

    c_Copy {}
    ,'Neckbeard like Beard ships with a standard 12-column grid and provides responsive helper classes to change the layout when the viewport reaches a certain breakpoint. It also supports nested grids and non-responsive grids for increased flexibility.'

    c_BlockQuote {}
    ,' Hint: To make the grid maintain its ratios on the small breakpoint, use the'
    ,
      c_Code
        type:'purple'
        '.frame--stay'
    ,'modifier on your'
    ,
      c_Code
        type:'purple'
        '.frame'

    c_div {
      (nb 'frame mb2 flex')...
    }
    ,
      c_div {
        (nb 'blk md-blk6 fb50')...
        style:`{'padding-left':30,'padding-right':30}`
      }
      ,
        c_div {
          (nb 'bgg05 flex pv1 ph2 jcc aic tcg30 ft3')...
        },'.blk.md-blk6'

      c_div {
        (nb 'blk md-blk6 fb50')...
        style:`{'padding-left':30,'padding-right':30}`
      }
      ,
        c_div {
          (nb 'bgg05 flex pv1 ph2 jcc aic tcg30 ft3')...
        },'.blk.md-blk6'

    c_div {
      (nb 'frame mb2')...
    }
    ,
      c_div {
        (nb 'blk md-blk--offset3')...
      }
      ,
        c_div {
          (nb 'bgg05 flex pv1 ph2 jcc aic tcg30 ft3')...
        },'blk.md-blk--offset3'

    c_div {
      (nb 'frame relative mb2')...
    }
    ,
      c_div {
        (nb 'blk3 md-blk--push9')...
      }
      ,
        c_div {
          (nb 'bgg05 flex pv1 ph2 jcc aic tcg30 ft3')...
        },'.blk3.md-blk--push9'

      c_div {
        (nb 'blk9 md-blk--pull3')...
      }
      ,
        c_div {
          (nb 'bgg05 flex pv1 ph2 jcc aic tcg30 ft3')...
        },'.blk9.md-blk--pull3'

    c_div {
      (nb 'mb1')...
    }
    ,
      c_H3 {}
      ,'The AutoGrid'

    c_Copy {}
    ,'The AutoGrid is the easiest way to get started. Simply use a div with a'
    ,
      c_Code {}
      ,'.frame'
    ,'class and place any number of'

    ,
      c_Code {}
      ,'.blk'
    ,'elements as direct descendants. The AutoGrid will automatically figure out the width for each column and will give it a generous 30px of padding between each of them. This will create 60px wide gutter between columns.'

    c_div {
      (nb 'frame relative mb2')...
    }
    ,
      c_div {
        (nb 'blk')...
      }
      ,
        c_div {
          (nb 'bgg05 flex pv1 ph2 jcc aic tcg30 ft3')...
        },'.blk'

      c_div {
        (nb 'blk')...
      }
      ,
        c_div {
          (nb 'bgg05 flex pv1 ph2 jcc aic tcg30 ft3')...
        },'.blk'

      c_div {
        (nb 'blk')...
      }
      ,
        c_div {
          (nb 'bgg05 flex pv1 ph2 jcc aic tcg30 ft3')...
        },'.blk'

      c_div {
        (nb 'blk')...
      }
      ,
        c_div {
          (nb 'bgg05 flex pv1 ph2 jcc aic tcg30 ft3')...
        },'.blk'
