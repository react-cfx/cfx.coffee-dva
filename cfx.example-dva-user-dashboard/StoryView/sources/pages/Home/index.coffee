import MainLayout from '../../components/MainLayout'
import nb from './style'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  'div'
  'h1'
  'ul'
  'li'
  'code'
  'a'

  MainLayout
}

export default ({
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
            href: 'https://github.com/dvajs/dva'
          , 'Getting Started'
