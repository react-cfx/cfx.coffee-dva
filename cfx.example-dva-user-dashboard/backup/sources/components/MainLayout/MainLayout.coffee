import React from 'react'
import Header from './Header'
import styl from 'cfx.style'
import nb from './MainLayoutStyl'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'div'
  }
  Header
}

MainLayout = ({
  children
  location
}) ->

  {
    c_div
    c_Header
  } = CFX

  c_div {
    ( nb 'normal' )...
  }
  ,
    c_Header {
      location
    }
    c_div {
      ( nb 'content' )...
    }
    ,
      c_div {
        ( nb 'main' )...
      }
      , children

export default MainLayout
