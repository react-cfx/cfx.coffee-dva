import { prefixDom } from 'cfx.dom'
import MainLayout from '../../components/MainLayout';
import nb from './style'

export default ({
  location
  Users
  HeaderLink
}) ->

  CFX = prefixDom {
    'div'
    MainLayout
    Users
  }

  {
    c_MainLayout
    c_Users
    c_div
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
      c_Users {}
