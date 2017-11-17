import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Users from '../components/Users'
import { components } from 'StoryView'
ViewUsers = components.Users.Index

import { Provider } from 'cfx.react-redux'
import { store } from 'ReduxServ'
userStore = store.store

CFX = prefixDom {
  ViewUsers
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

  .add 'ViewUsers'
  , =>

    { c_ViewUsers } = CFX

    c_ViewUsers {}

  .add 'Users'
  , =>

    { c_Users } = CFX

    c_Users {}
