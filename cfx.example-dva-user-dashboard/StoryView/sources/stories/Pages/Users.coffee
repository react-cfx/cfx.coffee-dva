import { prefixDom } from 'cfx.dom'
import {
  Users as UsersPage
} from '../../pages'

import UsersComp from '../../components/Users'

CFX = prefixDom {
  UsersPage
  UsersComp
}

export default ({
  HeaderLink
}) =>

  { c_UsersPage } = CFX

  c_UsersPage {

    Users: =>

      { c_UsersComp } = CFX

      c_UsersComp
        list: [
          id: 1
          name: 'mooxe'
          email: 'mooxe@gmail.com'
          website: 'www.mooxe.org'
        ]
        total: 10
        current: 1
        pageSize: 3

    HeaderLink

  }
