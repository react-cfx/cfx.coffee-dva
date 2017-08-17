import tinycolor from 'tinycolor2'
import {
  antPrefix
  primaryColor
  primary7

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

  easeInOut
} from '../../../Style/themes/default'

btnPrefixCls = "#{antPrefix}-btn"

buttonSize = (
  height
  padding
  fontSize
  borderRadius
) -> {
  padding
  fontSize
  borderRadius
  height
}

buttonColor = (color, backgroud, border) ->
  color: color
  backgroundColor: backgroud
  borderColor: border

  '> a:only-child':
    color: 'currentColor'
    ':after':
      content: ''
      position: 'absolute'
      top: 0
      left: 0
      bottom: 0
      right: 0
      background: 'transparent'

buttonVariantOther = (color, backgroud, border) ->
  {
    (buttonColor color, backgroud, border)...
    ':hover': buttonColor primaryColor, backgroud, primaryColor
    ':focus': buttonColor primaryColor, backgroud, primaryColor

    ':active': buttonColor primary7, backgroud, primary7
    '.active': buttonColor primary7, backgroud, primary7
  }

buttonVariantPrimary = (color, backgroud) ->
  color5 = (tinycolor.mix color, '#fff', 20).toHexString()
  color7 = (tinycolor.mix color, '#000', 5).toHexString()
  {
    (buttonColor color, backgroud, backgroud)...
    ':hover': buttonColor color, color5, color5
    ':focus': buttonColor color, color5, color5

    ':active': buttonColor color, color7, color7
    '.active': buttonColor color, color7, color7
  }

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
    buttonSize btnHeightBase
    , btnPaddingBase
    , fontSizeBase
    , btnBorderRadiusBase
  )...

  userSelect: 'none'
  # transition: 'all .3s #{easeInOut}'
  position: 'relative'

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

export default {
  ".#{btnPrefixCls}": {
    btn...
    btnDefault...
  }
  ".#{btnPrefixCls}-primary": {
    btnPrimary...
  }
}
