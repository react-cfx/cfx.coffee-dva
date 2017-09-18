import React from 'react'
import classNames from 'classnames'
import { prefixDom } from 'cfx.dom'
import { Icon } from 'antd'
import nb from '../../../../../nb'
import style from './style'
import iconfont from '../../../../Style/core/iconfont'
import { font } from '../../../../Style/themes'

CFX = prefixDom {
  default: {
    'ul'
    'li'
    'span'
  }
  Icon
}

export default class IconSet extends React.Component

  icons:
    direction: [
      'down'
      'up'
      'left'
      'right'
    ]
    suggestion: [
      'close'
      'check'
    ]
    logo: [
      'android', 'android-o'
      'apple', 'apple-o'
      'windows', 'windows-o'
      'ie', 'chrome'
      'github'
    ]
    other: [
      'lock'
      'unlock'
    ]

  render: ->
    {
      className
      catigory
    } = @props

    {
      c_ul
      c_li
      c_Icon
      c_span
    } = CFX

    listClassName = classNames
      'anticons-list': true
      clearfix: true
      "#{className}": !!className

    c_ul.apply @
    ,
      [
        {
          className: listClassName
          (nb style.ul)...
          (nb fontFamily: iconfont.fontFamily)...
        }
      ].concat(
        @icons[catigory]
        .reduce (r, type) =>
          [
            r...
            c_li {
              (nb style.li)...
            }
            ,
              c_Icon {
                type
                (nb ".#{font.icon.prefix}": iconfont[".#{font.icon.prefix}"])...
              }
              c_span
                className: 'anticon-class'
              , type
          ]
        , []
      )
