import React from 'react'
import { prefixDom } from 'cfx.dom'
import { Layout } from 'antd'
{ Sider } = Layout

import SiderBar from '../Main/SiderBar'
import MainContent from '../Main/MainContent'

CFX = prefixDom {
  Layout
  Sider

  SiderBar
  MainContent
}

class MainPage extends React.Component

  state:
    collapsed: false

  onCollapse: (collapsed) =>
    console.log collapsed
    @setState {
      collapsed
    }

  render: ->

    {
      c_Layout
      c_Sider

      c_SiderBar
      c_MainContent
    } = CFX

    c_Layout
      style:
        minHeight: '100vh'
    ,

      c_Sider {
        @collapsible
        collapsed: @state.collapsed
        onCollapse: @onCollapse
      }
      ,
        c_SiderBar {}

      c_Layout {}
      ,

        c_Sider {
          @collapsible
          collapsed: @state.collapsed
          onCollapse: @onCollapse
        }
        ,
          c_SiderBar {}

        c_Layout {}
        ,
          c_MainContent {}

export default MainPage
