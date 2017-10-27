import React, { Component } from 'react'
import { Table, Popconfirm } from 'antd'
import UserModal from './UserModal'
import './Users.css'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'a'
    'span'
  }
  UserModal
  Table
  Popconfirm
}

class UsersTable extends Component

  render: ->

    {
      c_a
      c_span
      c_Table
      c_Popconfirm
      c_UserModal
    } = CFX

    columns = [
        title: 'Name'
        dataIndex: 'name'
        key: 'name'
        render: (text) =>
          c_a {}
          , text
      ,
        title: 'Email'
        dataIndex: 'email'
        key: 'email'
      ,
        title: 'Website'
        dataIndex: 'website'
        key: 'website'
      ,
        title: 'Operation'
        key: 'operation'
        render: (text, record) =>

          c_span
            className: 'operation'
          ,
            c_UserModal {
              record
              # onOk: editHandler.bind null
              # , record.id
            }
            ,
              c_a {}
              , 'Edit'
            c_Popconfirm
              title: 'Confirm to delete?'
              # onConfirm: deleteHandler.bind null
              # , record.id
            ,
              c_a
                href: ''
              , 'Delete'
    ]

    c_Table {
      columns
      dataSource: @props.list
      # loading
      rowKey: (record) => record.id
      pagination: false
    }

export default UsersTable
