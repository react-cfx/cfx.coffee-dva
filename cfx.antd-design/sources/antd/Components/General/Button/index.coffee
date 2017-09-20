import React from 'react'
import classNames from 'classnames'
# import PropTypes from 'prop-types'
import omit from 'omit.js'

import Icon from '../Icon'
import { prefixDom } from 'cfx.dom'

import nb from '../../../../nb'
import buttonStyle from './button'

CFX = prefixDom {
  default: {
    'button'
  }
}

# Insert one space between two chinese characters automatically.
insertSpace = (child, needInserted) ->

  # Check the child if is undefined or null.
  return if child is null

  isString = (str) => typeof str is 'string'

  rxTwoCNChar = /^[\u4e00-\u9fa5]{2}$/
  isTwoCNChar =
    rxTwoCNChar.test
    .bind rxTwoCNChar

  SPACE = if needInserted then ' ' else ''

  # strictNullChecks oops.
  if (
    (typeof child is not 'string') and
    (typeof child is not 'number') and
    (isString child.type) and
    (isTwoCNChar child.props.children)
  )
    return React.cloneElement child, {}
    , (
      child.props.children
      .split ''
      .join SPACE
    )

  if typeof child is 'string'
    if isTwoCNChar child
      child = child
      .split ''
      .join SPACE
    return <span>{child}</span>
  
  child

# ButtonType = [
#   'primary'
#   'ghost'
#   'dashed'
#   'danger'
# ]
# ButtonShape = [
#   'circle'
#   'circle-outline'
# ]
# ButtonSize = [
#   'small'
#   'large'
# ]

export default class Button extends React.Component
  # (prop, state) ->

  # @Group: typeof Group
  @__ANT_BUTTON: true

  @defaultProps:
    prefixCls: 'ant-btn'
    loading: false
    # clicked: false
    ghost: false

  # @propTypes:
  #   type: PropTypes.string
  #   shape: PropTypes.oneOf [
  #     'circle'
  #     'circle-outline'
  #   ]
  #   size: PropTypes.oneOf [
  #     'large'
  #     'default'
  #     'small'
  #   ]
  #   htmlType: PropTypes.oneOf [
  #     'submit'
  #     'button'
  #     'reset'
  #   ]
  #   onClick: PropTypes.func
  #   loading: PropTypes.oneOfType [
  #     PropTypes.bool
  #     PropTypes.object
  #   ]
  #   className: PropTypes.string
  #   icon: PropTypes.string

  # timeout: number
  # delayTimeout: number

  constructor: (props) ->
    super props
    @state =
      loading: props.loading

  componentWillReceiveProps: (nextProps) ->
    currentLoading = @props.loading
    loading = nextProps.loading

    clearTimeout @delayTimeout if currentLoading

    if (
      typeof loading is not 'boolean' and
      loading and loading.delay
    )
      @delayTimeout = setTimeout(
        () => @setState { loading }
        loading.delay
      )
    else @setState { loading }

  componentWillUnmount: ->
    clearTimeout @timeout if @timeout
    clearTimeout @delayTimeout if @delayTimeout
    return

  # handleClick = (e) =>
  #   # Add click effect
  #   @setState { clicked: true }
  #   clearTimeout @timeout
  #   this.timeout = setTimeout(
  #     () => this.setState { clicked: false }
  #     500
  #   )

  #   onClick = @props.onClick
  #   onClick e if onClick

  render: ->

    {
      type
      shape
      size = ''
      className
      htmlType
      children
      icon
      prefixCls
      ghost
      others...
    } = @props

    {
      loading
      # clicked
    } = @state

    sizeCls = ''
    switch size
      when 'large'
        sizeCls = 'lg'
        break
      when 'small'
        sizeCls = 'sm'
      else break

    classes = classNames(
      prefixCls
      className
      "#{prefixCls}-#{type}": type
      "#{prefixCls}-#{shape}": shape
      "#{prefixCls}-#{sizeCls}": sizeCls
      "#{prefixCls}-icon-only": !children and icon and !loading
      "#{prefixCls}-loading": loading
      # "#{prefixCls}-clicked": clicked
      "#{prefixCls}-background-ghost": ghost
    )

    iconType = 
      if loading 
      then 'loading' 
      else icon
    iconNode =
      if iconType 
      then <Icon type={iconType} /> 
      else null
    needInserted =
      (React.Children.count children is 1) and
      (!iconType or iconType is 'loading')
    kids = React.Children.map children
    , (child) => insertSpace child, needInserted

    {
      c_button
    } = CFX

    c_button {
      (
        omit others
        , [
          'loading'
          # 'clicked'
        ]
      )...
      type: htmlType or 'button'
      className: classes
      (nb buttonStyle)...
      # onClick: @handleClick
    }
    , iconNode
    , kids
