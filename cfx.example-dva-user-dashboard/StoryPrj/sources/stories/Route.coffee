import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import { routes as Routes } from 'StoryView'
{ IndexPage } = Routes

import ViewUsers from '../components/Users'
Users = Routes.Users ViewUsers

import { Provider } from 'cfx.react-redux'
import { store } from 'ReduxServ'
userStore = store.store

CFX = prefixDom {
  IndexPage
  Users
  Provider
}

export default ->

  storiesOf 'Route', module

  .addDecorator (story) ->

    { c_Provider } = CFX
    c_Provider
      store: userStore
    , story()

  .add 'IndexPage'
  , =>

    { c_IndexPage } = CFX
    c_IndexPage {}

  .add 'Users'
  , =>

    { c_Users } = CFX
    c_Users {}
