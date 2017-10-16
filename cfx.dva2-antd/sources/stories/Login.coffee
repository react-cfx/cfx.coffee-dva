import { storiesOf } from '@storybook/react'

import Login from '../components/Login'
import LoginCard from '../components/Login/Card'
import LoginCenterCard from '../components/Login/CenterCard'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  Login
  LoginCard
  LoginCenterCard
}

export default ->

  storiesOf 'Login', module

  .add 'Login'
  , =>
    { c_Login } = CFX
    c_Login {}

  .add 'LoginCard'
  , =>
    { c_LoginCard } = CFX
    c_LoginCard {}

  .add 'LoginCenterCard'
  , =>

    { c_LoginCenterCard } = CFX
    c_LoginCenterCard {}
