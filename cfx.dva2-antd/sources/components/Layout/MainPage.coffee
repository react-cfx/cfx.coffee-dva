import React from 'react'
import {
  cfxify
  prefixDom
} from 'cfx.dom'
import { Layout } from 'antd'

import SiderBar from '../Main/SiderBar'
import MainContent from '../Main/MainContent'
import HocSiderContent from './SiderContent'

CFX = prefixDom {
  SiderBar
  MainContent
}

MainPage = HocSiderContent(
  CFX.c_SiderBar {}
  CFX.c_MainContent {}
)

CFX = prefixDom {
  Layout
  MainPage
}

class MainPage extends React.Component

  render: ->

    {
      c_Layout
      c_MainPage
    } = CFX

    c_Layout 
      className: 'ant-layout-has-sider'
      style:
        minHeight: '100vh'
    ,
      c_MainPage {}

export default MainPage
