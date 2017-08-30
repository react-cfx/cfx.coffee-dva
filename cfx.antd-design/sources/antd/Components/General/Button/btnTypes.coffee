import merge from 'lodash.merge'

import {
  btn
  color
  border
} from '../../../Style/themes'

import mixin from './mixin'

ghost =
  color: color.text.base
  bg: 'transparent'
  border: border.color.base

export default btnTypes =

  default: do ->
    defaultBg =
      backgroundColor: color.fff
    merge(
      mixin.btn.variant.other(
        btn.default.color
        btn.default.bg
        btn.default.border
      )
      ':hover': defaultBg
      ':focus': defaultBg
      ':active': defaultBg
      '.active': defaultBg
    )

  primary: mixin.btn.variant.primary(
    btn.primary.color
    btn.primary.bg
  )

  ghost: mixin.btn.variant.other(
    ghost.color
    ghost.bg
    ghost.border
  )

  dashed: {
    (
      mixin.btn.variant.other(
        btn.default.color
        btn.default.bg
        btn.default.border
      )
    )...
    borderStyle: 'dashed'
  }

  danger: mixin.btn.variant.danger(
    btn.danger.color
    btn.danger.bg
    btn.danger.border
  )
