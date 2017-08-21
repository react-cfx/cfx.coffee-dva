import {
  antPrefix

  fontSizeBase

  btnFontWeight
  btnBorderRadiusBase

  borderWidthBase
  borderStyleBase

  btnHeightBase
  btnPaddingBase

  btnDefaultColor
  btnDefaultBg
  btnDefaultBorder

  btnPrimaryColor
  btnPrimaryBg

  btnDangerColor
  btnDangerBg
  btnDangerBorder

  btnHeightLg
  btnPaddingLg
  btnFontSizeLg
  btnHeightSm
  btnPaddingSm
  btnBorderRadiusSm

  textColor

  borderColorBase

  easeInOut

  iconfontCssPrefix
} from '../../../Style/themes/default'

import {
  buttonVariantOther
  buttonVariantPrimary
  buttonVariantGhost
  buttonVariantDanger
} from './variant'

import { buttonSize } from './mixin' 

btnPrefixCls = "#{antPrefix}-btn"

btnGhostColor = textColor
btnGhostBg = 'transparent'
btnGhostBorder = borderColorBase

btn = {
  display: 'inline-block'
  marginBottom: 0
  fontWeight: btnFontWeight
  textAlign: 'center'
  touchAction: 'manipulation'
  cursor: 'pointer'
  backgroundImage: 'none'
  border: "#{borderWidthBase} #{borderStyleBase} transparent"
  whiteSpace: 'nowrap'

  # https://github.com/ant-design/ant-design/issues/7070
  lineHeight: 1.15

  (
    buttonSize(
      btnHeightBase
      btnPaddingBase
      fontSizeBase
      btnBorderRadiusBase
    )
  )...

  userSelect: 'none'
  # transition: 'all .3s #{easeInOut}'
  position: 'relative'

  "> .#{iconfontCssPrefix}":
    lineHeight: 1

  (
    do ->
      defaultOutline =
        outline: 0
      {
        defaultOutline...
        ':active': defaultOutline
        ':focus': defaultOutline
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
  defaultBackground =
    backgroundColor: '#fff'
  {
    (
      buttonVariantOther(
        btnDefaultColor
        btnDefaultBg
        btnDefaultBorder
      )
    )...
    ':hover': defaultBackground
    ':focus': defaultBackground
    ':active': defaultBackground
    '.active': defaultBackground
  }

btnPrimary =
  buttonVariantPrimary(
    btnPrimaryColor
    btnPrimaryBg
  )

btnGhost =
  buttonVariantOther(
    btnGhostColor
    btnGhostBg
    btnGhostBorder
  )

btnDashed = {
  (
    buttonVariantOther(
      btnDefaultColor
      btnDefaultBg
      btnDefaultBorder
    )
  )...
  borderStyle: 'dashed'
}

btnDanger =
  buttonVariantDanger(
    btnDangerColor
    btnDangerBg
    btnDangerBorder
  )

export default {
  ".#{btnPrefixCls}": {
    btn...
    btnDefault...
  }

  ".#{btnPrefixCls}-primary": {
    btnPrimary...
  }

  ".#{btnPrefixCls}-ghost": {
    btnGhost...
  }

  ".#{btnPrefixCls}-dashed": {
    btnDashed...
  }

  ".#{btnPrefixCls}-danger": {
    btnDanger...
  }

  '> i':
    pointerEvents: 'none'
  '> span':
    pointerEvents: 'none'

  ".#{btnPrefixCls}-lg":
    buttonSize(
      btnHeightLg
      btnPaddingLg
      btnFontSizeLg
      btnBorderRadiusBase
    )
  ".#{btnPrefixCls}-sm":
    buttonSize(
      btnHeightSm
      btnPaddingSm
      fontSizeBase
      btnBorderRadiusSm
    )

  ':before':
    position: 'absolute'
    top: '-1px'
    left: '-1px'
    bottom: '-1px'
    right: '-1px'
    background: '#fff'
    opacity: '0.35'
    content: '';
    borderRadius: 'inherit'
    zIndex: 1
    transition: 'opacity .2s'
    pointerEvents: 'none'
    display: 'none'
}
