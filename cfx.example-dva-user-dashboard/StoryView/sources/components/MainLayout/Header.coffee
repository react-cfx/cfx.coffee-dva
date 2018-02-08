import { ddbs as dd } from 'ddeyes'
import { prefixDom } from 'cfx.dom'
import { Menu, Icon } from 'antd'
MenuItem = Menu.Item

CFX = prefixDom {
  'a'
  Menu
  MenuItem
  Icon
}

export default ({
  location
  Link
}) ->

  { c_a } = CFX
  HocA = (link) => ({
    children
  }) =>
    c_a
      href: link
    , children

  LinkUsers =
    if Link?.Users?
    then Link.Users
    else HocA '/users'
  LinkIndex =
    if Link?.Index?
    then Link.Index
    else HocA '/'
  LinkFof =
    if Link?.Fof?
    then Link.Fof
    else HocA '/404'

  CFX = {
    CFX...
    (
      prefixDom {
        LinkUsers
        LinkIndex
        LinkFof
      }
    )...
  }

  {
    c_Menu
    c_MenuItem
    c_Icon
    c_LinkUsers
    c_LinkIndex
    c_LinkFof
  } = CFX

  c_Menu {
    selectedKeys:
      unless location
      then null
      else [ location.pathname ]
    mode: 'horizontal'
    theme: 'dark'
  }
  ,
    c_MenuItem
      key: '/users'
    ,
      c_LinkUsers {}
      ,
        c_Icon type: 'bars'
      , 'Users'

    c_MenuItem
      key: '/'
    ,
      c_LinkIndex {}
      ,
        c_Icon type: 'home'
      , 'Home'

    c_MenuItem
      key: '404'
    ,
      c_LinkFof {}
      ,
        c_Icon type: 'frown-circle'
      , '404'

    c_MenuItem {}
    ,
      c_a
        href: 'https://github.com/dvajs/dva'
      , 'dva'
