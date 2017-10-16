import React from 'react'
import { prefixDom } from 'cfx.dom'
dd = console.log

CFX = prefixDom
  default: {
    'div'
  }

class PageCenterComp extends React.Component

  render: ->

    {
      c_div
    } = CFX

    c_div {
      @props...
      style:
        display: 'flex'
        height: '100vh'
        'align-items': 'center'
        'justify-content': 'center'
    }

export default PageCenterComp
