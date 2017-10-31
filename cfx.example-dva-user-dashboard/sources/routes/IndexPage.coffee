import MainLayout from '../components/MainLayout/MainLayout'
import './IndexPage.css'

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

IndexPage = ->
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
      className: [
        'IndexPage'
        'normal'
      ].join ' '
    ,
      c_h1
        className: 'title'
      , 'Yay! Welcome to dva!'

      c_div
        className: 'welcome'

      c_ul
        className: 'list'
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

export default IndexPage
