import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Button } from 'antd'

import Users from '../components/Users/Users'

import { Provider } from 'cfx.react-redux'
import { store } from 'ReduxServ'
userStore = store.store

CFX = prefixDom {
  Button
  Users
  Provider
}

export default ->

  storiesOf 'Users', module

  .addDecorator (story) ->

    { c_Provider } = CFX
    c_Provider
      store: userStore
    , story()

  .add 'Users'
  , =>

    { c_Users } = CFX

    c_Users {}