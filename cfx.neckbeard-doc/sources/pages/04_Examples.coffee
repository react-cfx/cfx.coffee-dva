import { prefixDom } from 'cfx.dom'
import nb from '../nb'

import H1 from '../components/H1'
import H2 from '../components/H2'
import H3 from '../components/H3'
import Code from '../components/Code'
import Copy from '../components/Copy'

CFX = prefixDom {
  default: {
    'div'
    'iframe'
    'a'
  }
  H1
  H2
  H3
  Code
  Copy
}

##
  # Examples Page
  ##
export default Examples = =>
  {
    c_div
    c_iframe
    c_H1
    c_H2
    c_H3
    c_Code
    c_Copy
    c_a
  } = CFX

  c_div {}
  ,

    c_H1 {}
    , 'Examples'

    c_H3 {}
    , 'Button Component - ReactJS'

    c_div {
      (nb 'mb3')...
    }
    ,
      c_iframe {
        (nb 'w100')...
        height: "400"
        scrolling: "no"
        src: "//codepen.io/andrewdelprete/embed/VKYQqb/?height=400&theme-id=0&default-tab=js,result&embed-version=2"
        frameBorder: "no"
        allowTransparency: true
      }
      , 'See the Pen'
      ,
        c_a
          href: "http://codepen.io/andrewdelprete/pen/VKYQqb/"
        , 'Neckbeard Button Component Demo in ReactJS'
      , ' by Andrew Del Prete ('
      ,
        c_a
          href: 'http://codepen.io/andrewdelprete'
        , '@andrewdelprete'
      , ') on '
      ,
        c_a
          href: 'http://codepen.io'
        , 'CodePen'
      , '.'

    c_H3 {}
    , 'Field Button Component - ReactJS'
    ,
      c_div {}
      ,
        c_iframe {
          (nb 'w100')...
          height: "400"
          scrolling: "no"
          src: "//codepen.io/andrewdelprete/embed/JRdQWR/?height=400&theme-id=0&default-tab=js,result&embed-version=2"
          frameBorder: "no"
          allowTransparency: true
        }
        , "See the Pen "
        ,
          c_a {
            href: "http://codepen.io/andrewdelprete/pen/JRdQWR/"
          }
          , 'Neckbeard Field  Component Demo in ReactJS'
        , ' by Andrew Del Prete ('
        ,
          c_a {
            href: 'http://codepen.io/andrewdelprete'
          }
          , '@andrewdelprete'
        , ") on "
        ,
          c_a {
            href:'http://codepen.io'
          }
          , 'CodePen'
        , '.'
