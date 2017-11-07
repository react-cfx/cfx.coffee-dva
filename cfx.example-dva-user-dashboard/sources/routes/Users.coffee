import { prefixDom } from 'cfx.dom'
import MainLayout from '../components/MainLayout/MainLayout';
import Users from '../components/Users/dva'
import nb from './UsersStyl'

CFX = prefixDom {
  default: {
    'div'
  }
  MainLayout
  Users
}

export default ({
  location
}) ->
  {
    c_MainLayout
    c_Users
    c_div
  } = CFX

  c_MainLayout {
    location
  }
  ,
    c_div {
      ( nb 'normal' )...
    }
    ,
      c_Users {}
