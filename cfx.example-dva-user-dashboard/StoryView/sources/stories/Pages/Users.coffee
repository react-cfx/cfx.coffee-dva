import { prefixDom } from 'cfx.dom'
import {
  Users
  UsersPage
} from '../../pages'

CFX = prefixDom {
  Users
  UsersPage
}

export default ({
  location
  HeaderLink
}) =>

  {
    c_Users
    c_UsersPage
  } = CFX

  c_Users {
    location
    HeaderLink

    Users: =>

      { c_Users } = CFX

      c_UsersPage
        list: [
          id: 1
          name: 'mooxe'
          email: 'mooxe@gmail.com'
          website: 'www.mooxe.org'
        ]
        total: 10
        current: 1
        pageSize: 3

  }
