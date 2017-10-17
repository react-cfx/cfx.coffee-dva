import React from 'react'
import { prefixDom } from 'cfx.dom'

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
        alignItems: 'center'
        justifyContent: 'center'
    }

export default PageCenterComp
