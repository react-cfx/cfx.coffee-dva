import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import {
  Provider
  app
} from '../store'
{ store } = app

import Users from '../components/Users'
import { Comps } from 'StoryView'
ViewUsers = Comps.Users

CFX = prefixDom {
  ViewUsers
  Users
  Provider
}

export default ->

  storiesOf 'Users', module

  .addDecorator (story) ->

    { c_Provider } = CFX
    c_Provider {
      store
    }
    , story()

  .add 'ViewUsers'
  , =>

    { c_ViewUsers } = CFX

    c_ViewUsers {}

  .add 'Users'
  , =>

    { c_Users } = CFX

    c_Users {}
