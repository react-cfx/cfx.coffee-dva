import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import MainLayout, { Header } from '../components/MainLayout'

CFX = prefixDom {
  'h1'

  Header
  MainLayout
}

export default ->

  storiesOf 'MainLayout', module

  .add 'Header'
  , =>
    { c_Header } = CFX
    c_Header {}

  .add 'MainLayout'
  , =>
    {
      c_MainLayout
      c_h1
    } = CFX

    c_MainLayout {}
    ,
      c_h1 {}
      , 'Hello World!!!'
