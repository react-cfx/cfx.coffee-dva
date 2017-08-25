import { storiesOf } from '@storybook/react'

import Login from '../components/Login'
import LoginCard from '../components/Login/Card'

import { prefixDom } from '../lib/coffee-dva/rw/Components'

CFX = prefixDom {
  Login
  LoginCard
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
