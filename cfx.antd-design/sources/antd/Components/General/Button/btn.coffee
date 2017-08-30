import {
  btn
  border
  font
  animation
} from '../../../Style/themes'

import mixin from './mixin'

export default {

  display: 'inline-block'
  marginBottom: 0
  fontWeight: btn.font.weight
  textAlign: 'center'
  touchAction: 'manipulation'
  cursor: 'pointer'
  backgroundImage: 'none'
  border: [
    border.base.width
    border.base.style
    'transparent'
  ].join ' '
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
  transition: "all .3s #{animation.ease.inOut}"
  position: 'relative'

  "> .#{font.icon.prefix}":
    lineHeight: 1

  (
    do ->
      outline =
        outline: 0
      '&': outline
      '&:active': outline
      '&:focus': outline
  )...

  '&:not([disabled]):hover':
    textDecoration: 'none'
  '&:not([disabled]):active':
    outline: 0
    transition: 'none'

  (
    do ->
      disabledCursor =
        cursor: 'not-allowed'
        '> *':
          pointerEvents: 'none'
      '&.disabled': disabledCursor
      '&[disabled]': disabledCursor
  )...

  '&-lg': mixin.btn.size(
    btn.height.lg
    btn.padding.lg
    btn.font.size.lg
    btn.border.radius.base
  )

  '&-sm': mixin.btn.size(
    btn.height.sm
    btn.padding.sm
    font.size.base
    btn.border.radius.sm
  )

}
