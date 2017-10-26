import { Menu, Icon } from 'antd'
MenuItem = Menu.Item

import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'a'
  }
  Menu
  MenuItem
  Icon
}

export default ->
  {
    c_Menu
    c_MenuItem
    c_Icon
    c_a
  } = CFX

  c_Menu
    mode: 'horizontal'
    theme: 'dark'
  ,
    c_MenuItem {}
    ,
      c_a {}
      ,
        c_Icon type: 'bars'
      , 'Users'

    c_MenuItem {}
    ,
      c_a {}
      ,
        c_Icon type: 'home'
      , 'Home'

    c_MenuItem {}
    ,
      c_a {}
      ,
        c_Icon type: 'frown-circle'
      , '404'

    c_MenuItem {}
    ,
      c_a
        href: 'https://github.com/dvajs/dva'
      , 'dva'
