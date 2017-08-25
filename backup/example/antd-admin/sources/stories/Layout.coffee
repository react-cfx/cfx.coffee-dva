import { storiesOf } from '@storybook/react'

import LoginCard from '../components/Login/Card'
import Vpage from '../components/Layout/Vpage'
import SiderDemo from '../components/Layout/FirstSider'

import { cfxify } from '../lib/coffee-dva/common/Cfxify'
import { prefixDom } from '../lib/coffee-dva/rw/Components'

CFX = prefixDom {
  LoginCard
  SiderDemo
}

export default ->

  storiesOf 'Layout', module

  .add 'Login'
  , =>

    { c_LoginCard } = CFX

    LayoutPage = cfxify(
      Vpage {}
      , ->
        c_LoginCard
          style:
            margin: 'auto'
    )

    LayoutPage {}

  .add 'FirstSider'
  , =>

    { c_SiderDemo } = CFX

    FirstSider = cfxify(
      Vpage {}
      , ->
        c_SiderDemo {}
    )

    FirstSider {}
