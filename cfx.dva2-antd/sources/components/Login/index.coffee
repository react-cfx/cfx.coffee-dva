import React from 'react'
import { Form, Icon, Input, Button, Checkbox } from 'antd'
FormItem = Form.Item
import { prefixDom } from 'cfx.dom'

import './index.css'

CFX = prefixDom {
  default: {
    'a'
    'div'
  }
  Form
  FormItem
  Icon
  Input
  Button
  Checkbox
}

class NormalLoginForm extends React.Component

  handleSubmit: (e) =>
    e.preventDefault()
    @props.form.validateFields (err, values) =>
      console.log 'Received values of form: ', values unless err

  render: ->
    {
      c_div
      c_a
      c_Form
      c_FormItem
      c_Icon
      c_Input
      c_Button
      c_Checkbox
    } = CFX

    { getFieldDecorator } = @props.form;

    loginForm =
      c_Form
        onSubmit: @handleSubmit
        className: 'login-form'
      ,

        c_FormItem {}
        ,
          (
            getFieldDecorator 'userName'
            ,
              rules: [
                required: true
                message: 'Please input your username!'
              ]
          )(
            c_Input
              prefix: c_Icon
                type: 'user'
                style: fontSize: 13
              placeholder: 'Username'
          )

        c_FormItem {}
        ,
          (
            getFieldDecorator 'password'
            ,
              rules: [
                required: true
                message: 'Please input your Password!'
              ]
          )(
            c_Input
              prefix: c_Icon
                type: 'lock'
                style: fontSize: 13
              type: 'password'
              placeholder: 'Password'
          )

        c_FormItem {}
        ,

          (
            getFieldDecorator 'remember'
            ,
              valuePropName: 'checked'
              initialValue: true
          )(
            c_Checkbox {}
            , 'Remember me'
          )

          c_a
            className: 'login-form-forgot'
            href: ''
          , 'Forgot password'

          c_Button
            type: 'primary'
            htmlType: 'submit'
            className: 'login-form-button'
          , 'log in'

          'Or '

          c_a
            href: ''
          , 'register now!'

    c_div
      id: 'components-form-demo-normal-login'
    ,
      loginForm

WrappedNormalLoginForm = Form.create() NormalLoginForm

export default WrappedNormalLoginForm
