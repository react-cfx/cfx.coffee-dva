import { storiesOf } from '@storybook/react'

import Login from '../components/Login'
import LoginCard from '../components/Login/Card'
import LayoutLoginWrapper from '../components/Layout/Login'

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

  .add 'LayoutLoginCard'
  , =>
    { c_LoginCard } = CFX
    c_LoginCard {}

    LayoutPage =
      LayoutLoginWrapper {}
      , ->
        c_LoginCard
          style:
            margin: 'auto'

    {
      c_LayoutPage
    } = prefixDom {
      LayoutPage
    }

    c_LayoutPage {}
