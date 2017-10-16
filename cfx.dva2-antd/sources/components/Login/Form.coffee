import React from 'react'
import { Form, Icon, Input, Button, Checkbox } from 'antd'
FormItem = Form.Item
import { prefixDom } from 'cfx.dom'

import './Form.css'

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

class LoginForm extends React.Component

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

    { getFieldDecorator } = @props.form
    _getFieldDecorator = (name, rules, children) ->
      (
        getFieldDecorator name, rules
      ) children

    decoratorField =

      username:
        _getFieldDecorator 'username'
        ,
          rules: [
            required: true
            message: 'Please input your username!'
          ]
        ,
          c_Input
            prefix: c_Icon
              type: 'user'
              style: fontSize: 13
            placeholder: 'Username'

      password:
        _getFieldDecorator 'password'
        ,
          rules: [
            required: true
            message: 'Please input your Password!'
          ]
        ,
          c_Input
            prefix: c_Icon
              type: 'lock'
              style: fontSize: 13
            type: 'password'
            placeholder: 'Password'

      remember:
        _getFieldDecorator 'remember'
        ,
          valuePropName: 'checked'
          initialValue: true
        ,
          c_Checkbox {}
          , 'Remember me'

    loginForm =

      c_Form
        onSubmit: @handleSubmit
        className: 'login-form'
      ,

        c_FormItem {}
        , decoratorField.username

        c_FormItem {}
        , decoratorField.password

        c_FormItem {}
        ,
          decoratorField.remember

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

export default Form.create() LoginForm
