import React, { Component } from 'react'
import { Form, Input } from 'antd'
FormItem = Form.Item
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  Form
  FormItem
  Input
}

class UserEditForm extends Component

  render: ->

    { getFieldDecorator } = @props.form
    {
      name
      email
      website
    } = @props.record

    {
      c_Form
      c_FormItem
      c_Input
    } = CFX

    getFormItem = ({
      label
      decorator
      initialValue
    }) ->

      formItemLayout =
        labelCol:
          span: 6
        wrapperCol:
          span: 14

      c_FormItem {
        formItemLayout...
        label
      }
      ,
        (
          getFieldDecorator decorator
          , {
            initialValue
          }
        ) c_Input {}

    c_Form
      horizontal: true
    ,

      getFormItem
        label: 'Name'
        decorator: 'name' 
        initialValue: name

      getFormItem
        label: 'Email'
        decorator: 'email' 
        initialValue: email

      getFormItem
        label: 'Website'
        decorator: 'website' 
        initialValue: website

export default Form.create() UserEditForm
