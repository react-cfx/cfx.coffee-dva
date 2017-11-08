import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Header from '../components/MainLayout/Header'
import MainLayout from '../components/MainLayout/MainLayout'

CFX = prefixDom {
  default: {
    'h1'
  }
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
