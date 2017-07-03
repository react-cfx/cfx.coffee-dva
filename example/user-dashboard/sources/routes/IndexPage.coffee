import React from 'react'
import { connect } from 'dva'
import styles from './IndexPage.css'
import MainLayout from '../components/MainLayout/MainLayout'
import { cfxify } from '../lib/coffee-dva/common/Cfxify'
import {
  prefixDom
  Components
} from '../lib/coffee-dva/rw/Components'

CFX = prefixDom
  MainLayout: cfxify MainLayout
  div: Components.div
  h1: Components.h1
  ul: Components.ul
  li: Components.li
  code: Components.code
  a: Components.a

IndexPage = ({
  location
}) ->
  {
    c_MainLayout
    c_div
    c_h1
    c_ul
    c_li
    c_code
    c_a
  } = CFX

  c_MainLayout {
    location
  }
  ,
    c_div
      className: styles.normal
    ,
      c_h1
        className: styles.title
      , 'Yay! Welcome to dva!'
    ,
      c_div
        className: styles.welcome
    ,
      c_ul
        className: styles.list
      ,
        c_li {}
        , 'To get started, edit'
        ,
          c_code {}
          , 'src/index.js'
        , ' and save to reload.'
      ,
        c_li {}
        ,
          c_a
            href: 'https://github.com/dvajs/dva-docs/blob/master/v1/en-us/getting-started.md'
          , 'Getting Started'

export default connect() IndexPage
