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

snippet ="""
<div className={ nb("lg-dn") }>.lg-dn</div>
"""
snippet2 ="""
// Neckbeard.defaultSettings.breakpoints
{
    "sm": 300,
    "md": 600,
    "lg": 900,
    "xlg": 1440
}
"""

export default BreakPoints = =>

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
    , 'Breakpoints'
    c_Copy {}
    , 'Because Neckbeard ships with a standard set of breakpoints, many of the helpers are responsive. These helpers are generated from the breakpoints in your configuration. These are the default breakpoints:'
    c_H2 {}
    , 'Options'
    c_table
      className: "#{nb 'w100 mb2 ft4 tcg60 lh2 sans'}"
    ,
      c_thead {}
      ,
        c_tr
          className: "#{nb 'brdr1--bottom bcg10 bgg05'}"
        ,
          c_th
            className: "#{nb 'pa1 tal fwsemibold ph1'}"
          , 'Name'
          c_th
            className: "#{nb 'pa1 tal fwsemibold ph1'}"
          , 'Prefix'
          c_th
            className: "#{nb 'pa1 tal fwsemibold ph1'}"
          , 'Target'
      c_tbody {}
      ,
        c_tr
          className: "#{nb 'brdr1--bottom bcg10'}"
        ,
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          , 'Small'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '.sm'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '(min-width: 300px)'
        c_tr
          className: "#{nb 'brdr1--bottom bcg10'}"
        ,
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          , 'Medium'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '.md'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '(min-width: 600px)'
        c_tr
          className: "#{nb 'brdr1--bottom bcg10'}"
        ,
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          , 'Large'
          c_td
            className:"#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '.lg'
          c_td
            className:"#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '(min-width: 900px)'
        c_tr
          className: "#{nb 'brdr1--bottom bcg10'}"
        ,
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          , 'Extra Large'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '.xlg'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '(min-width: 1440px)'
        c_tr
          className: "#{nb 'brdr1--bottom bcg10'}"
        ,
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          , 'Only Small'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '.only-sm-'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '(max-width: 599px)'
        c_tr
          className: "#{nb 'brdr1--bottom bcg10'}"
        ,
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          , 'Only Medium'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '.only-md-'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '(min-width: 600px) and (max-width: 899px)'
        c_tr
          className: "#{nb 'brdr1--bottom bcg10'}"
        ,
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          , 'Only Large'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '.only-lg-'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '(min-width: 900px) and (max-width: 1439px)'
        c_tr
          className: "#{nb 'brdr1--bottom bcg10'}"
        ,
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            'Only Extra Large'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '.only-xlg-'
          c_td
            className: "#{nb 'tcg50 fw3 pv2 ph1'}"
          ,
            c_Code {}
            , '(min-width: 1440px)'

    c_H1 {}
    , 'Example'
    c_Copy {}
    , 'You can use responsive prefixes to specify when an element should be shown on a page. The following would hide the element on the "lg" breakpoint.'
    c_Highlight
      className: "#{nb 'pa2 mb2 lh5 ft4'}"
    , snippet

    c_H2 {}
    , 'Default Settings'
    c_Copy {}
    , 'See'
    ,
      c_a
        href: "https://www.neckbeardjs.com/usage#configuration"
      , 'Configuration'
    , 'to learn how to overwrite helper settings.'

    c_Highlight
      className: "#{nb 'pa2 lh5 ft4'}"
    , snippet2
