import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import { Button } from 'antd'

import UserForm from '../components/Users/UserForm'
import UserModal from '../components/Users/UserModal'
import UsersTable from '../components/Users/UsersTable'

import Users from '../components/Users/storybook'

import { Provider } from 'cfx.react-redux'
import store from './store'

CFX = prefixDom {
  Button

  UserForm
  UserModal
  UsersTable
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

  .add 'UserForm'
  , =>

    { c_UserForm } = CFX
    c_UserForm
      record:
        name: 'mooxe'
        email: 'mooxe@gmail.com'
        website: 'www.mooxe.org'

  .add 'UserModal'
  , =>

    {
      c_Button
      c_UserModal
    } = CFX

    c_UserModal
      record:
        name: 'mooxe'
        email: 'mooxe@gmail.com'
        website: 'www.mooxe.org'
    ,
      c_Button {}
      , 'User Modal'

  .add 'UsersTable'
  , =>

    { c_UsersTable } = CFX
    c_UsersTable
      list: [
        id: 1
        name: 'mooxe'
        email: 'mooxe@gmail.com'
        website: 'www.mooxe.org'
      ]

  .add 'Users'
  , =>

    { c_Users } = CFX

    c_Users {}
