import React from 'react'
import { prefixDom } from 'cfx.dom'
import { Layout } from 'antd'
{ Sider } = Layout

CFX = prefixDom {
  Layout
  Sider
}

HocSiderContent = (
  Sider
  Content
) ->

  class SiderContent extends React.Component

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
      } = CFX

      [
        c_Sider {
          key: 'Sider'
          collapsible: @collapsible
          collapsed: @state.collapsed
          onCollapse: @onCollapse
        }
        ,
          Sider
        c_Layout
          key: 'Layout'
        ,
          Content
      ]

export default HocSiderContent
