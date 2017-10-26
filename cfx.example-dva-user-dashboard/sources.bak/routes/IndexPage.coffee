import { connect } from 'dva'
import styles from './IndexPage.css'
import MainLayout from '../components/MainLayout/MainLayout'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'div'
    'h1'
    'ul'
    'li'
    'code'
    'a'
  }
  MainLayout
}

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

      c_div
        className: styles.welcome

      c_ul
        className: styles.list
      ,
        c_li {}
        , 'To get started, edit'
        ,
          c_code {}
          , 'src/index.js'
        , ' and save to reload.'

        c_li {}
        ,
          c_a
            href: 'https://github.com/dvajs/dva-docs/blob/master/v1/en-us/getting-started.md'
          , 'Getting Started'

IndexPage.propTypes = {}

export default connect() IndexPage
