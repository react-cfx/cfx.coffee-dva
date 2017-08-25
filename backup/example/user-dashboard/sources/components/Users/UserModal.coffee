import React, { Component } from 'react'
import { Modal, Form, Input } from 'antd'

import { cfxify } from '../../lib/coffee-dva/common/Cfxify'
import {
  prefixDom
  Components
} from '../../lib/coffee-dva/rw/Components'

CFX = prefixDom
  Modal: cfxify Modal
  Form: cfxify Form
  FormItem: cfxify Form.Item
  Input: cfxify Input
  span: Components.span

class UserEditModal extends Component

  constructor: (props) ->
    super props
    @state =
      visible: false
    @

  showModelHandler: (e) =>
    e.stopPropagation() if e
    @setState
      visible: true
    return

  hideModelHandler: =>
    @setState
      visible: false
    return

  okHandler: =>
    { onOk } = @props
    @props.form.validateFields (
      err
      values
    ) =>
      unless err
        onOk values
        @hideModelHandler()
      return
    return

  render: ->
    {
      c_Modal
      c_Form
      c_FormItem
      c_Input
      c_span
    } = CFX

    { children } = @props
    { getFieldDecorator } = @props.form
    {
      name
      email
      website
    } = @props.record
    formItemLayout =
      labelCol:
        span: 6
      wrapperCol:
        span: 14

    c_span {}

    ,
      c_span
        onClick: @showModelHandler
      , children

    ,
      c_Modal
        title: 'Edit User'
        visible: @state.visible
        onOk: @okHandler
        onCancel: @hideModelHandler
      ,
        c_Form
          layout: 'horizontal'
          onSubmit: @okHandler

        ,
          c_FormItem(

            Object.assign {}
            , formItemLayout
            , label: 'name'

            (
              getFieldDecorator 'name'
              , initialValue: name
            ) c_Input {}

          )

          c_FormItem(

            Object.assign {}
            , formItemLayout
            , label: 'Email'

            (
              getFieldDecorator 'email'
              , initialValue: email
            ) c_Input {}

          )

          c_FormItem(

            Object.assign {}
            , formItemLayout
            , label: 'Website'

            (
              getFieldDecorator 'website'
              , initialValue: website
            ) c_Input {}

          )

export default Form.create() UserEditModal
