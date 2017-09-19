import React from 'react'

import { Icon } from 'antd'
import { prefixDom } from 'cfx.dom'
import nb from '../../../../nb'
import { font } from '../../../Style/themes'
import iconfonts from '../../../Style/core/Iconfonts'
import { iconfontMixin } from '../../../Style/mixins/iconfont'

CFX = prefixDom { Icon }

export default class CFX_Icon extends React.Component

  render: ->

    { type } = @props

    # _type = type
    # .replace /([A-Z])/g, "-$1"
    # .toLowerCase()

    { c_Icon } = CFX

    klass =
      prefix: ".#{font.icon.prefix}"
      type: "&-#{type}:before"

    styleObj = 
      "#{klass.prefix}": {
        iconfontMixin...
        "#{klass.type}":
          iconfonts["#{klass.prefix}"]["#{klass.type}"]
      }

    c_Icon {
      type
      (
        nb styleObj
      )...
    }