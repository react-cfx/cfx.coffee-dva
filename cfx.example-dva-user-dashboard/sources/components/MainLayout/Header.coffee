import { Menu, Icon } from 'antd'
import { Link } from 'dva/router'
import { prefixDom } from 'cfx.dom'
MenuItem = Menu.Item

CFX = prefixDom {
  default: {
    'a'
  }
  Menu
  MenuItem
  Icon
  Link
}

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
