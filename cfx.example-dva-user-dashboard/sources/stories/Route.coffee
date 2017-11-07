import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import IndexPage from '../routes/IndexPage'

import RouteUsers from '../routes/Users'
import ViewUsers from '../components/Users'

Users = RouteUsers ViewUsers

CFX = prefixDom {
  IndexPage
  Users
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
