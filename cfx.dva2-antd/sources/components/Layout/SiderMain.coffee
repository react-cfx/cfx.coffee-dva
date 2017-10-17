import React from 'react'
import { prefixDom } from 'cfx.dom'
import { Layout, Menu, Breadcrumb, Icon } from 'antd'
{ Header, Content, Footer, Sider } = Layout
MenuItem = Menu.Item
SubMenu = Menu.SubMenu
BreadcrumbItem = Breadcrumb.Item

CFX = prefixDom {
  default: {
    'div'
    'span'
  }
  Menu
  MenuItem
  SubMenu
  Breadcrumb
  BreadcrumbItem
  Icon
  Layout
  Header
  Content
  Footer
  Sider
}

class SiderDemo extends React.Component

  state:
    collapsed: false

  onCollapse: (collapsed) =>
    console.log collapsed
    @setState {
      collapsed
    }

  render: ->

    {
      c_div
      c_span
      c_Menu
      c_MenuItem
      c_SubMenu
      c_Breadcrumb
      c_BreadcrumbItem
      c_Icon
      c_Layout
      c_Header
      c_Content
      c_Footer
      c_Sider
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
        c_div
          className: 'logo'

        c_Menu
          theme: 'dark'
          defaultSelectedKeys: [ '1' ]
          mode: 'inline'
        ,

          c_MenuItem
            key: '1'
          ,
            c_Icon
              type: 'pie-chart'
            c_span {}
            , 'Option 1'

          c_MenuItem
            key: '2'
          ,
            c_Icon
              type: 'desktop'
            c_span {}
            , 'Option 2'

          c_SubMenu
            key: 'sub1'
            title:
              c_span {}
              ,
                c_Icon type: 'user'
                c_span {}, 'User'
          ,
            c_MenuItem
              key: '3'
            , 'Tom'
            c_MenuItem
              key: '4'
            , 'Bill'
            c_MenuItem
              key: '5'
            , 'Alex'

          c_SubMenu
            key: 'sub2'
            title:
              c_span {}
              ,
                c_Icon type: 'team'
                c_span {}, 'Team'
          ,
            c_MenuItem key: '6'
            , 'Team 1'
            c_MenuItem key: '8'
            , 'Team 2'

          c_MenuItem key: '9'
          ,
            c_Icon type: 'file'
            c_span {}, 'File'

      c_Layout {}
      ,
        c_Header
          style:
            background: '#fff'
            padding: 0
        c_Content
          style:
            margin: '0 16px'
        ,
          c_Breadcrumb
            style:
              margin: '12px 0'
          ,
            c_BreadcrumbItem {}, 'User'
            c_BreadcrumbItem {}, 'Bill'
          c_div
            style: 
              padding: 24
              background: '#fff'
              minHeight: 360
          , 'Bill is a cat.'
        c_Footer
          style:
            textAlign: 'center'
        , 'Ant Design ©2016 Created by Ant UED'

export default SiderDemo
