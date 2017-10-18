import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import SiderBar from '../components/Main/SiderBar'
import MainContent from '../components/Main/MainContent'
import MainPage from '../components/Main/MainPage'

CFX = prefixDom {
  SiderBar
  MainContent
  MainPage
}

export default ->

  storiesOf 'Main', module

  .add 'SiderBar'
  , =>
    { c_SiderBar } = CFX
    c_SiderBar {}

  .add 'MainContent'
  , =>
    { c_MainContent } = CFX
    c_MainContent {}

  .add 'MainPage'
  , =>

    { c_MainPage } = CFX
    c_MainPage {}
