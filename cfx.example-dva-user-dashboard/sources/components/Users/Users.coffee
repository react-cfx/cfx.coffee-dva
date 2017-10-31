import React, { Component } from 'react'
import { Pagination, Button } from 'antd'
import UsersTable from './UsersTable'
import UserModal from './UserModal'
import { prefixDom } from 'cfx.dom'
import { PAGE_SIZE } from '../../constants'

import './Users.css'

CFX = prefixDom {
  default: {
    'div'
  }
  Pagination
  Button
  UserModal
  UsersTable 
}

class Users extends Component

  render: ->

    {
      c_div
      c_Pagination
      c_Button
      c_UserModal
      c_UsersTable
    } =  CFX

    c_div
      className: [
        'normal'
        'Users'
      ].join ' '
    ,
      c_div {}
      ,
        c_div
          className: 'create'
        ,
          c_UserModal
            record: {}
          ,
            c_Button
              type: 'primary'
            , 'Create User'
        c_UsersTable
          list: @props.list
        c_Pagination {
          className: 'ant-table-pagination'
          total: @props.total
          current: @props.current
          pageSize: PAGE_SIZE
        }

export default Users
