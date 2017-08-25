import React from 'react'
import { Menu, Icon } from 'antd'
import { Link } from 'dva/router'
import { cfxify } from '../../lib/coffee-dva/common/Cfxify'
import {
  prefixDom
  Components
} from '../../lib/coffee-dva/rw/Components'

CFX = prefixDom
  Menu: cfxify Menu
  MenuItem: cfxify Menu.Item
  Icon: cfxify Icon
  Link: cfxify Link
  a: Components.a

export default Header = ({
  location
}) ->
  {
    c_Menu
    c_MenuItem
    c_Icon
    c_Link
    c_a
  } = CFX

  c_Menu
    selectedKeys: [
      location.pathname
    ]
    mode: 'horizontal'
    theme: 'dark'

  ,
    c_MenuItem
      key: '/users'
    ,
      c_Link
        to: '/users'
      ,
        c_Icon
          type: 'bars'
      , 'Users'

  ,
    c_MenuItem
      key: '/'
    ,
      c_Link
        to: '/'
      ,
        c_Icon
          type: 'home'
      , 'Home'

  ,
    c_MenuItem
      key: '/404'
    ,
      c_Link
        to: '/page-you-dont-know'
      ,
        c_Icon
          type: 'frown-circle'
      , '404'

  ,
    c_MenuItem
      key: '/antd'
    ,
      c_a
        href: 'https://github.com/dvajs/dva'
      , 'dva'
