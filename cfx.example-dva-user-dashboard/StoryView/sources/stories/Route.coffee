import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import {
  IndexPage
  Users as RouteUsers
} from '../routes'
import ViewUsers from '../components/Users'

CFX = prefixDom {
  IndexPage
  ViewUsers
}

Users = RouteUsers ->
  { c_ViewUsers } = CFX
  c_ViewUsers
    list: [
      id: 1
      name: 'mooxe'
      email: 'mooxe@gmail.com'
      website: 'www.mooxe.org'
    ]
    total: 10
    current: 1
    pageSize: 3

CFX = {
  CFX...
  (
    prefixDom {
      Users
    }
  )...
}

export default ->

  storiesOf 'Route', module

  .add 'IndexPage'
  , =>

    { c_IndexPage } = CFX
    c_IndexPage {}

  .add 'Users'
  , =>

    { c_Users } = CFX
    c_Users {}
