import React from 'react'
import { Card } from 'antd'
import Login from './index'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  Card
  Login
}

class NormalLoginFormCard extends React.Component

  render: ->

    {
      c_Card
      c_Login
    } = CFX

    c_Card

      style:
        Object.assign {}
        , @props.style
        ,
          width: 300
    ,
      c_Login {}

export default NormalLoginFormCard
