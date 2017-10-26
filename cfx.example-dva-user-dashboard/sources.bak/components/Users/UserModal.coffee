import React, { Component } from 'react'
import { Modal, Form, Input } from 'antd'
FormItem = Form.Item
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'span'
  }
  Modal
  Form
  FormItem
  Input
}

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
    , 'Hello World!!!'
    #   c_span
    #     onClick: @showModelHandler
    #   , children

    # ,
    #   c_Modal
    #     title: 'Edit User'
    #     visible: @state.visible
    #     onOk: @okHandler
    #     onCancel: @hideModelHandler
    #   ,
    #     c_Form
    #       layout: 'horizontal'
    #       onSubmit: @okHandler

    #     ,
    #       c_FormItem {
    #         formItemLayout...
    #         label: 'name'
    #       }
    #       ,
    #         (
    #           getFieldDecorator 'name'
    #           ,
    #             initialValue: name
    #         ) c_Input {}

    #       c_FormItem {
    #         formItemLayout...
    #         label: 'Email'
    #       }
    #       ,
    #         (
    #           getFieldDecorator 'email'
    #           ,
    #             initialValue: email
    #         ) c_Input {}

    #       c_FormItem {
    #         formItemLayout...
    #         label: 'Website'
    #       }
    #       ,
    #         (
    #           getFieldDecorator 'website'
    #           , initialValue: website
    #         ) c_Input {}

export default Form.create() UserEditModal
