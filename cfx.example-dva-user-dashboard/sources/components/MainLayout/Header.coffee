import { Menu, Icon } from 'antd'
MenuItem = Menu.Item
import { Link } from 'dva/router'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'a'
  }
  Menu
  MenuItem
  Icon
  Link
}

export default ({
  location
}) ->

  {
    c_Menu
    c_MenuItem
    c_Icon
    c_a
    c_Link
  } = CFX

  t_Link =
    unless location
    then (attr, args...) ->
      c_a.apply @, [
        attr.a
        args...
      ]
    else (attr, args...) ->
      c_Link.apply @, [
        attr.link
        args...
      ]

  c_Menu {
    selectedKeys:
      unless location
      then null
      else [location.pathname]
    mode: 'horizontal'
    theme: 'dark'
  }
  ,
    c_MenuItem
      key: '/users'
    ,
      t_Link
        a: {}
        link:
          to: '/users'
      ,
        c_Icon type: 'bars'
      , 'Users'

    c_MenuItem
      key: '/'
    ,
      t_Link
        a: {}
        link:
          to: '/'
      ,
        c_Icon type: 'home'
      , 'Home'

    c_MenuItem
      key: '404'
    ,
      t_Link
        a: {}
        link:
          to: '/page-you-dont-konw'
      ,
        c_Icon type: 'frown-circle'
      , '404'

    c_MenuItem {}
    ,
      c_a
        href: 'https://github.com/dvajs/dva'
      , 'dva'
