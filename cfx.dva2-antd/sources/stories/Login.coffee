import { storiesOf } from '@storybook/react'

import {
  LoginForm
  LoginCard
  LoginCenterCard
} from '../components/Login'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  LoginForm
  LoginCard
  LoginCenterCard
}

export default ->

  storiesOf 'Login', module

  .add 'LoginForm'
  , =>
    { c_LoginForm } = CFX
    c_LoginForm {}

  .add 'LoginCard'
  , =>
    { c_LoginCard } = CFX
    c_LoginCard {}

  .add 'LoginCenterCard'
  , =>

    { c_LoginCenterCard } = CFX
    c_LoginCenterCard {}
