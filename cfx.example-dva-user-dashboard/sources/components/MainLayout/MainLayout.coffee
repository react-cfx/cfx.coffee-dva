import React from 'react'
import Header from './Header'

import './MainLayout.css'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'div'
  }
  Header
}

MainLayout = ({
  children
}) ->

  {
    c_div
    c_Header
  } = CFX

  c_div
    className: [
      'MainLayout'
      'normal'
    ].join ' '
  ,
    c_Header {}
    c_div
      className: 'content'
    ,
      c_div
        className: 'main'
      , children

export default MainLayout
