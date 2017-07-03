import React from 'react'
import styles from './MainLayout.css'
import Header from './Header'
import { cfxify } from '../../lib/coffee-dva/common/Cfxify'
import {
  prefixDom
  Components
} from '../../lib/coffee-dva/rw/Components'

CFX = prefixDom
  Header: cfxify Header
  div: Components.div

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
  ,
    c_div
      className: styles.content
    ,
      c_div
        className: styles.main
      , children
