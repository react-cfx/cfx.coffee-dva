import React from 'react'
import { prefixDom } from '../../lib/coffee-dva/rw/Components'

CFX = prefixDom
  default: {
    'div'
  }

LayoutLoginWrapper = (props, LoginComp) ->

  class LayoutLoginClass extends React.Component

    render: ->

      { c_div } = CFX

      c_div
        style:
          display: 'flex'
          minHeight: '100vh'
          margin: 0
      ,
        LoginComp()

export default LayoutLoginWrapper
