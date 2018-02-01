import MainLayout from '../components/MainLayout/MainLayout'
import nb from './IndexPageStyl'
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
  HeaderLink
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
    HeaderLink
  }
  ,
    c_div {
      ( nb 'normal' )...
    }
    ,
      c_h1 {
        ( nb 'title' )...
      }
      , 'Yay! Welcome to dva!'

      c_div {
        ( nb 'welcome' )...
      }

      c_ul {
        ( nb 'list' )...
      }
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
