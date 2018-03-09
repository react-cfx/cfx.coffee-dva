import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import {
  Home as HomePage
} from '../../pages'

import UsersPage from './Users'

import {
  Users as LinkUsers
  Index as LinkIndex
  Fof as LinkFof
} from './Link'

CFX = prefixDom {
  HomePage
  UsersPage
}

export default ->

  storiesOf 'Pages', module

  .add 'Home'
  , =>

    { c_HomePage } = CFX
    c_HomePage
      HeaderLink:
        Users: LinkUsers
        Index: LinkIndex
        Fof: LinkFof

  .add 'Users'
  , =>

    { c_UsersPage } = CFX
    c_UsersPage
      HeaderLink:
        Users: LinkUsers
        Index: LinkIndex
        Fof: LinkFof
