import React from 'react'
import styles from './MainLayout.css'
import Header from './Header'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'div'
  }
  Header
}

export default MainLayout = ({
  children
  location
}) ->

  {
    c_Header
    c_div
  } = CFX

  c_div
    className: styles.normal
  ,
    c_Header {
      location
    }
    c_div
      className: styles.content
    ,
      c_div
        className: styles.main
      , children
