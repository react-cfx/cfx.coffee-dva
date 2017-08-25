import React from 'react'
import { Menu, Icon } from 'antd'
SubMenu = Menu.SubMenu
MenuItem = Menu.Item

import { prefixDom } from '../../lib/coffee-dva/rw/Components'

CFX = prefixDom {
  default: {
    'div'
    'span'
  }
  Menu
  MenuItem
  SubMenu
  Icon
}

class SiderMenu extends React.Component

  render: ->

    {
      c_div
      c_span
      c_Menu
      c_MenuItem
      c_SubMenu
      c_Icon
    } = CFX

    c_div {}
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
              c_Icon
                type: 'user'
              c_span {}
              , 'User'
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
              c_Icon
                type: 'team'
              c_span {}
              , 'Team'

        ,
          c_MenuItem
            key: '6'
          , 'Team 1'

          c_MenuItem
            key: '8'
          , 'Team 2'

        c_MenuItem
          key: '8'
        ,
          c_Icon
            type: 'file'
          c_span {}
          , 'File'

export default SiderMenu
