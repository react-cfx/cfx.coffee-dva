import UsersComp from '../components/Users/Users';
import MainLayout from '../components/MainLayout/MainLayout';
import nb from './UsersStyl'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'div'
  }
  MainLayout
  UsersComp
}

Users = ->
  {
    c_MainLayout
    c_UsersComp
    c_div
  } = CFX

  c_MainLayout {}
  ,
    c_div {
      ( nb 'normal' )...
    }
    ,
      c_UsersComp
        list: [
          id: 1
          name: 'mooxe'
          email: 'mooxe@gmail.com'
          website: 'www.mooxe.org'
        ]
        total: 10
        current: 1

export default Users
