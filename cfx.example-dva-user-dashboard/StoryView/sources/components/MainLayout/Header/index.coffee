# import { ddbs as dd } from 'ddeyes'

import { prefixDom } from 'cfx.dom'
import { Menu, Icon } from 'antd'
MenuItem = Menu.Item
import getLink from './Link'

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

  Link = getLink Link
  ,
    Index: '/'
    Users: '/users'
    Fof: '/404'

  CFX = {
    CFX...
    (
      prefixDom
        LinkUsers: Link.Users
        LinkIndex: Link.Index
        LinkFof: Link.Fof
    )...
  }

  {
    c_a
    c_Menu
    c_MenuItem
    c_Icon
    c_LinkUsers
    c_LinkIndex
    c_LinkFof
  } = CFX

  c_Menu {
    selectedKeys:
      unless location?
      then [ '/' ]
      else [ location.pathname ]
    mode: 'horizontal'
    theme: 'dark'
  }
  ,
    c_MenuItem
      key: '/'
    ,
      c_LinkIndex {}
      ,
        c_Icon type: 'home'
      , 'Home'

    c_MenuItem
      key: '/users'
    ,
      c_LinkUsers {}
      ,
        c_Icon type: 'bars'
      , 'Users'

    c_MenuItem
      key: '/umi'
    ,
      c_a
        href: 'https://github.com/umijs/umi'
        target: '_blank'
        rel: 'noopener noreferrer'
      , 'dva'

    c_MenuItem
      key: '/dva'
    ,
      c_a
        href: 'https://github.com/dvajs/dva'
        target: '_blank'
        rel: 'noopener noreferrer'
      , 'dva'

    c_MenuItem
      key: '/404'
    ,
      c_LinkFof {}
      ,
        c_Icon type: 'frown-circle'
      , '404'
