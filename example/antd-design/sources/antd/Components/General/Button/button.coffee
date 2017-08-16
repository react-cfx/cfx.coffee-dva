import {
  antPrefix

  fontSizeBase

  btnFontWeight
  btnBorderRadiusBase

  borderWidthBase
  borderStyleBase

  btnHeightBase
  btnPaddingBase

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
  ':hover': defaultBackground
  ':focus': defaultBackground
  ':active': defaultBackground
  '.active': defaultBackground

export default
  ".#{btnPrefixCls}": {
    btn...
    btnDefault...
  }
