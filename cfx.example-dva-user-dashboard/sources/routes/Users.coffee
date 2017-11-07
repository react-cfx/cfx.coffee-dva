import { prefixDom } from 'cfx.dom'
import MainLayout from '../components/MainLayout/MainLayout';
import nb from './UsersStyl'

export default (Users) ->

  CFX = prefixDom {
    default: {
      'div'
    }
    MainLayout
    Users
  }

  ({
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
