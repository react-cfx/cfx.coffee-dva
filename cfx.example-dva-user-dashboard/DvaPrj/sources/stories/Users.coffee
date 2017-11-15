import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Button } from 'antd'

import Users from '../components/Users/Users'

import { Provider } from 'cfx.react-redux'
import { store } from 'ReduxServ'

CFX = prefixDom {
  Button
  Users
  Provider
}

userStore = store.store

export default ->

  storiesOf 'Users', module

  .addDecorator (story) ->

    # console.log userStore.getState()

    { c_Provider } = CFX
    c_Provider
      store: userStore
    , story()

  .add 'Users'
  , =>

    { c_Users } = CFX

    c_Users {}
