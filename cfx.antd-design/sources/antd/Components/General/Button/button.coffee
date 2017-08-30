import {
  antPrefix
  color
  border
  btn
  font
  # animation
} from '../../../Style/themes'
import merge from 'lodash.merge'

import mixin from './mixin'

config =
  prefixCls: "#{antPrefix}-btn"
  ghost:
    color: color.text.base
    bg: 'transparent'
    border: border.color.base

button = {
  display: 'inline-block'
  marginBottom: 0
  fontWeight: btn.font.weight
  textAlign: 'center'
  touchAction: 'manipulation'
  cursor: 'pointer'
  backgroundImage: 'none'
  border: "#{border.base.width} #{border.base.style} transparent"
  whiteSpace: 'nowrap'

  # https://github.com/ant-design/ant-design/issues/7070
  lineHeight: 1.15

  (
    mixin.btn.size(
      btn.height.base
      btn.padding.base
      font.size.base
      btn.border.radius.base
    )
  )...

  userSelect: 'none'
  # transition: 'all .3s #{animation.ease.inOut}'
  position: 'relative'

  "> .#{font.icon.prefix}":
    lineHeight: 1

  (
    do ->
      base =
        outline: 0
      {
        base...
        ':active': base
        ':focus': base
      }
  )...

  ':not([disabled]):hover':
    textDecoration: 'none'

  ':not([disabled]):active':
    outline: 0
    transition: 'none'

  (
    do ->
      disabled =
        cursor: 'not-allowed'
        '> *':
          pointerEvents: 'none'
      '.disabled': disabled
      '[disabled]': disabled
  )...

}

btnDefault = do ->
  baseBg =
    backgroundColor: color.fff
  merge(
    mixin.btn.variant.other(
      btn.default.color
      btn.default.bg
      btn.default.border
    )
    ':hover': baseBg
    ':focus': baseBg
    ':active': baseBg
    '.active': baseBg
  )

btnPrimary =
  mixin.btn.variant.primary(
    btn.primary.color
    btn.primary.bg
  )

btnGhost =
  mixin.btn.variant.other(
    config.ghost.color
    config.ghost.bg
    config.ghost.border
  )

btnDashed = {
  (
    mixin.btn.variant.other(
      btn.default.color
      btn.default.bg
      btn.default.border
    )
  )...
  borderStyle: 'dashed'
}

btnDanger =
  mixin.btn.variant.danger(
    btn.danger.color
    btn.danger.bg
    btn.danger.border
  )

export {
  button
  btnDefault
  btnPrimary
  btnGhost
  btnDashed
  btnDanger
}
export default {
  ".#{config.prefixCls}": {
    button...
    btnDefault...
  }

  ".#{config.prefixCls}-primary": {
    btnPrimary...
  }

  ".#{config.prefixCls}-ghost": {
    btnGhost...
  }

  ".#{config.prefixCls}-dashed": {
    btnDashed...
  }

  ".#{config.prefixCls}-danger": {
    btnDanger...
  }

  '> i':
    pointerEvents: 'none'
  '> span':
    pointerEvents: 'none'

  ".#{config.prefixCls}-lg":
    mixin.btn.size(
      btn.height.lg
      btn.padding.lg
      btn.font.size.lg
      btn.border.radius.base
    )

  ".#{config.prefixCls}-sm":
    mixin.btn.size(
      btn.height.sm
      btn.padding.sm
      font.size.base
      btn.border.radius.sm
    )

  ".#{config.prefixCls}-circle":
    mixin.btn.circle config.prefixCls
  ".#{config.prefixCls}-circle-outline":
    mixin.btn.circle config.prefixCls

  ':before':
    position: 'absolute'
    top: '-1px'
    left: '-1px'
    bottom: '-1px'
    right: '-1px'
    background: '#fff'
    opacity: '0.35'
    content: '""'
    borderRadius: 'inherit'
    zIndex: 1
    transition: 'opacity .2s'
    pointerEvents: 'none'
    display: 'none'
}
