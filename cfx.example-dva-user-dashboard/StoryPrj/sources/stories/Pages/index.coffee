# import { ddbs as dd } from 'ddeyes'
import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import {
  Provider
  app
} from '../../store'
{ store } = app

import { Pages } from 'StoryView'
{ Home } = Pages

import Users from './Users'

import {
  stories
} from 'StoryView/dist/stories'

LinkUsers = stories.HeaderLink.Users
LinkIndex = stories.HeaderLink.Index
LinkFof = stories.HeaderLink.Fof

CFX = prefixDom {
  Home
  Users 
  Provider
}

export default ->

  storiesOf 'Pages', module

  .addDecorator (story) ->

    { c_Provider } = CFX
    c_Provider {
      store
    }
    , story()

  .add 'Home'
  , =>

    { c_Home } = CFX
    c_Home
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
