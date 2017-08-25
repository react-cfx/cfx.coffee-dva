import React from 'react'

import { Layout, Breadcrumb } from 'antd'
{ Header, Content, Footer, Sider } = Layout
BreadcrumbItem = Breadcrumb.Item
import SiderMenu from '../Menu/Sider'

import { prefixDom } from '../../lib/coffee-dva/rw/Components'

CFX = prefixDom {
  default: {
    'div'
  }
  Layout
  Header
  Content
  Footer
  Sider
  SiderMenu
  Breadcrumb
  BreadcrumbItem
}

class SiderDemo extends React.Component

  constructor: ->
    super()

    @state =
      collapsed: false
    @

  onCollapse: (collapsed) =>
    console.log collapsed
    @setState { collapsed }
    @

  render: ->
    {
      c_div
      c_Layout
      c_Header
      c_Content
      c_Footer
      c_Sider
      c_SiderMenu
      c_Breadcrumb
      c_BreadcrumbItem
    } = CFX

    c_Layout {}
    ,
      c_Sider
        collapsible: true
        collapsed: @state.collapsed
        onCollapse: @onCollapse
      ,
        c_SiderMenu {}

      c_Layout {}
      ,
        c_Header
          style:
            background: '#fff'
            padding: 0

        c_Content
          style: margin: '0 16px'
        ,
          c_Breadcrumb
            style: margin: '12px 0'
          ,
            c_BreadcrumbItem {}
            , 'User'
            c_BreadcrumbItem {}
            , 'Bill'
          c_div
            style:
              padding: 24
              background: '#fff'
              minHeight: 360
          , 'Bill is a cat.'

        c_Footer
          style: textAlign: 'center'
        , 'Ant Design ©2016 Created by Ant UED'

export default SiderDemo
