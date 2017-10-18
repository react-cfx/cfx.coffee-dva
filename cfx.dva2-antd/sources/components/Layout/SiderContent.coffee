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

      console.log @props

      [
        c_Sider {
          key: 'Sider'
          collapsible: @collapsible
          collapsed: @state.collapsed
          onCollapse: @onCollapse
          style: {
            (
              if @props?.style?.sider?
              then @props.style.sider
              else {}
            )...
          }
        }
        ,
          Sider
        c_Layout {
          (
            if @props?.className?.layout?
            then className: @props.className.layout
            else {}
          )...
          key: 'Layout'
        }
        ,
          Content
      ]

export default HocSiderContent
