import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import { routes as Routes } from 'StoryView'
{ IndexPage } = Routes
RouteUsers = Routes.Users

import ViewUsers from '../components/Users'

import { Provider } from 'cfx.react-redux'
import { store } from 'ReduxServ'
userStore = store.store

import {
  Users as LinkUsers
  Index as LinkIndex
  Fof as LinkFof
} from './HeaderLink'

CFX = prefixDom {
  IndexPage
  RouteUsers
  Provider
}

Users = ({
  HeaderLink
}) =>
  { c_RouteUsers } = CFX
  c_RouteUsers {
    Users: ViewUsers
    HeaderLink
  }

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

  .addDecorator (story) ->

    { c_Provider } = CFX
    c_Provider
      store: userStore
    , story()

  .add 'IndexPage'
  , =>

    { c_IndexPage } = CFX
    c_IndexPage
      HeaderLink:
        Users: LinkUsers
        Index: LinkIndex
        Fof: LinkFof

  .add 'Users'
  , =>

    { c_Users } = CFX
    c_Users
      HeaderLink:
        Users: LinkUsers
        Index: LinkIndex
        Fof: LinkFof
