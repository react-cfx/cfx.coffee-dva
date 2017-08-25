import React from 'react'
import { connect } from 'dva'
import { Table, Pagination, Popconfirm, Button } from 'antd'
import { routerRedux } from 'dva/router'
import styles from './Users.css'
import { PAGE_SIZE } from '../../constants'
import UserModal from './UserModal'

import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'a'
    'span'
    'div'
  }
  Table
  Pagination
  Popconfirm
  Button
  UserModal
}

Users = ({
  dispatch
  list: dataSource
  loading
  total
  page: current
}) ->
  deleteHandler = (id) ->
    dispatch
      type: 'users/remove'
      payload: id

  pageChangeHandler = (page) ->
    dispatch routerRedux.push
      pathname: '/users'
      query: { page }

  editHandler = (id, values) ->
    dispatch
      type: 'users/patch'
      payload: {
        id
        values
      }

  createHandler = (values) ->
    dispatch
      type: 'users/create'
      payload: values

  {
    c_Table
    c_Pagination
    c_Popconfirm
    c_Button
    c_UserModal
    c_a
    c_span
    c_div
  } = CFX

  columns = [
      title: 'Name'
      dataIndex: 'name'
      key: 'name'
      render: (text) =>
        c_a href: '', text
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
          className: styles.operation
        ,
          c_UserModal {
            record
            onOk: editHandler.bind null, record.id
          }
          ,
            c_a {}
            , 'Edit'
        ,
          c_Popconfirm
            title: 'Confirm to delete?'
            onConfirm: deleteHandler.bind null, record.id
          ,
            c_a
              href: ''
            , 'Delete'
  ]

  c_div
    className: styles.normal
  ,
    c_div {}
    ,
      c_div
        className: styles.create
      ,
        c_UserModal
          record: {}
          onOk: createHandler
        ,
          c_Button
            type: 'primary'
          , 'Create User'
    ,
      c_Table {
        columns
        dataSource
        loading
        rowKey: (record) => record.id
        pagination: false
      }
    ,
      c_Pagination {
        className: 'ant-table-pagination'
        total
        current
        pageSize: PAGE_SIZE
        onChange: pageChangeHandler
      }

mapStateToProps = ({
  users
  loading
}) ->
  {
    list
    total
    page
  } = users
  {
    loading: loading.models.users
    list
    total
    page
  }

export default (connect mapStateToProps) Users
