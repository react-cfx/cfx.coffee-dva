import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import IndexPage from '../routes/IndexPage'
import Users from '../routes/Users'

import { Provider } from 'cfx.react-redux'
import store from './store'

CFX = prefixDom {
  IndexPage
  Users

  Provider
}

export default ->

  storiesOf 'Route', module

  .addDecorator (story) ->

    { c_Provider } = CFX
    c_Provider {
      store
    }
    , story()

  .add 'IndexPage'
  , =>

    { c_IndexPage } = CFX
    c_IndexPage {}

  .add 'Users'
  , =>

    { c_Users } = CFX
    c_Users {}