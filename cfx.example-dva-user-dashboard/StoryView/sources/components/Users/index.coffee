import React, { Component } from 'react'
import { Pagination, Button } from 'antd'

import UserForm from './UserForm'
import UsersTable from './UsersTable'
import UserModal from './UserModal'

import { prefixDom } from 'cfx.dom'

import nb from './UsersStyl'

CFX = prefixDom {
  default: {
    'div'
  }
  Pagination
  Button
  UserModal
  UsersTable
}

export default ({
  list
  total
  current
  pageSize = 3
}) =>

  {
    c_div
    c_Pagination
    c_Button
    c_UserModal
    c_UsersTable
  } =  CFX

  c_div {
    ( nb 'normal' )...
  }
  ,
    c_div {}
    ,
      c_div {
        ( nb 'create' )...
      }
      ,
        c_UserModal
          record: {}
        ,
          c_Button
            type: 'primary'
          , 'Create User'
      c_UsersTable {
        list 
      }
      c_Pagination {
        className: 'ant-table-pagination'
        total
        current
        pageSize
      }

export {
  UserForm
  UsersTable
  UserModal
}
