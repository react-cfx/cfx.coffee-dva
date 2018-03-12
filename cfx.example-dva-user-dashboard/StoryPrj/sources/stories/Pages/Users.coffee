import { prefixDom } from 'cfx.dom'

import { Pages } from 'StoryView'
{
  Users
} = Pages

import UsersComp from '../../pages/Users'

CFX = prefixDom {
  Users
  UsersComp
}

export default ({
  HeaderLink
}) =>

  { c_Users } = CFX

  c_Users {
    Users: UsersComp
    HeaderLink
  }
