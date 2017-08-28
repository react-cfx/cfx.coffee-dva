import { prefixDom } from 'cfx.dom'
import nb from '../nb'
import H3 from '../components/H3'

CFX = prefixDom {
  default: {
    'li'
    'a'
    'ul'
    'nav'
    'div'
  }
  H3
}

##
 # Nav
 ##
NavItem = ({
  children
  to
}) =>
  {
    c_li
    c_a
  } = CFX

  c_li {
    (nb "db brdr1--bottom bcg10")...
  }
  ,
    c_a {
      to
      (nb "db ft6 tc5 pv1 xtd h-tc1")...
    }
    , children

CFX = {
  CFX...
  (
    prefixDom {
      NavItem
    }
  )...
}

export default Nav = ({
  onMenuToggle
}) =>

  {
    c_li
    c_a
    c_ul
    c_nav
    c_H3
    c_div
    c_NavItem
  } = CFX

  c_nav {}
  ,
    c_ul {
      (nb "sans")...
    }
    ,
      c_H3 {}
      , 'Getting Started'

      c_NavItem
        to: "/"
      , 'Overview'
      c_NavItem
        to: "/installation"
      , 'Installation'
      c_NavItem
        to: "/usage"
      , 'Usage'
      c_NavItem
        to: "/breakpoints"
      , 'Breakpoints'
      c_NavItem
        to: "/examples"
      , 'Examples'

      c_div {
        (nb "mt3")...
      }
      ,
        c_H3 {}
        , 'Helpers'

      c_NavItem
        to: "/border"
      , 'Border'
      c_NavItem
        to: "/border-radius"
      , 'Border Radius'
      c_NavItem
        to: "/colors"
      , 'Colors'
      c_NavItem
        to: "/display"
      , 'Display'
      c_NavItem
        to: "/flexbox"
      , 'Flexbox'
      c_NavItem
        to: "/float"
      , 'Float'
      c_NavItem
        to: "/fonts"
      , 'Fonts'
      c_NavItem
        to: "/grid"
      , 'Grid'
      c_NavItem
        to: "/letter-spacing"
      , 'Letter Spacing'
      c_NavItem
        to: "/line-height"
      , 'Line Height'
      c_NavItem
        to: "/misc"
      , 'Misc'
      c_NavItem
        to: "/overflow"
      , 'Overflow'
      c_NavItem
        to: "/position"
      , 'Position'
      c_NavItem
        to: "/spacing"
      , 'Spacing'
      c_NavItem
        to: "/text-alignment"
      , 'Text Alignment'
      c_NavItem
        to: "/text-decoration"
      , 'Text Decoration'
      c_NavItem
        to: "/z-index"
      , 'Z Index'
