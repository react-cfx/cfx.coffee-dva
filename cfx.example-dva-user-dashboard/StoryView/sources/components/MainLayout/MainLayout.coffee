import React from 'react'
import Header from './Header'
import styl from 'cfx.style'
import nb from './MainLayoutStyl'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  'div'
  Header
}

MainLayout = ({
  location
  HeaderLink
  children
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
      Link: HeaderLink
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
