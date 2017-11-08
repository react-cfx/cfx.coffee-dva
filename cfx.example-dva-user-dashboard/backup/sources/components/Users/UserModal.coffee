import React, { Component } from 'react'
import UserForm from './UserForm'
import { Modal } from 'antd'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'span'
  }
  Modal
  UserForm
}

class UserEditModal extends Component

  constructor: (props) ->
    super props
    @state =
      visible: false
    @

  showModelHandler: (e) ->
    e.stopPropagation() if e
    @setState
      visible: true
    return

  hideModelHandler: ->
    @setState
      visible: false
    return

  okHandler: ->
    { onOk } = @props
    @props.form.validateFields (err, values) ->
      unless err
        onOk values
        @hideModelHandler()
    return

  render: ->
    { children } = @props
    {
      c_span
      c_Modal
      c_UserForm
    } = CFX

    c_span {}
    ,
      c_span
        onClick: @showModelHandler.bind @
      , children

      c_Modal
        title: 'Edit User'
        visible: @state.visible
        onOk: @okHandler.bind @
        onCancel: @hideModelHandler.bind @
      ,
        c_UserForm
          record: @props.record

export default UserEditModal
