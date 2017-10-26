import { storiesOf } from '@storybook/react'
import { Button } from 'antd'
import { prefixDom } from 'cfx.dom'

import UserForm from '../components/Users/UserForm'
import UserModal from '../components/Users/UserModal'
import UsersTable from '../components/Users/UsersTable'

CFX = prefixDom {
  Button
  UserForm
  UserModal
  UsersTable
}

export default ->

  storiesOf 'Users', module

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
        name: 'mooxe'
        email: 'mooxe@gmail.com'
        website: 'www.mooxe.org'
      ]
