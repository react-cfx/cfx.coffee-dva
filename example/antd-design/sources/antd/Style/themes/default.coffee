import tinycolor from 'tinycolor2'
import colors from '../color/colors'

antPrefix = 'ant'

primaryColor = colors.blue6
infoColor = colors.blue6
successColor = colors.green6
errorColor = colors.red6
highlightColor = colors.red6
warningColor = colors.yellow6
normalColor = #d9d9d9

primary1 = colors.blue1
primary2 = colors.blue2
# primary3
# primary4
primary5 = colors.blue5
# primary6
primary7 = colors.blue7
# primary8
# primary9
# primary10

bodyBackground = '#fff'
componentBackground = '#fff'

fontFamilyNoNumber = '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", "Helvetica Neue", Helvetica, Arial, sans-serif'
fontFamily = '"Helvetica Neue For Number", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", "Helvetica Neue", Helvetica, Arial, sans-serif'
codeFamily = 'Consolas, Menlo, Courier, monospace'

fade = (color, percent) ->
  (
    (tinycolor color).setAlpha percent
  ).toHexString()

tint = (color, amount) ->
  tinycolor
  .mix '#ffffff'
  , color, amount
  .toHexString()

shade = (color, amount) ->
  tinycolor
  .mix '#000000'
  , color, amount
  .toHexString()

headingColor = fade '#000', .85
headingColorDark = fade '#fff', .97

backgroundColorBase = '#f7f7f7'
backgroundColorActive = '#eee'

borderColorBase = '#d9d9d9' 

textColor = fade '#000', .65
textColorSecondary = fade '#000', .43
textColorDark = fade '#fff', .91
textColorSecondaryDark = fade '#fff', .67

fontSizeBase = '12px'
fontSizeLg = '14px'
lineHeightBase = 1.5
borderRadiusBase = '4px'
borderRadiusSm = '2px'

itemActiveBg = primary1
itemHoverBg = primary1

# ICONFONT
iconfontCssPrefix = 'anticon'
iconUrl = "https://at.alicdn.com/t/font_zck90zmlh7hf47vi"

# LINK
linkColor = primaryColor
linkHoverColor = primary5
linkActiveColor = primary7
linkHoverDecoration = 'none'

# Animation
easeOut = 'cubic-bezier(0.215, 0.61, 0.355, 1)'
easeIn = 'cubic-bezier(0.55, 0.055, 0.675, 0.19)'
easeInOut = 'cubic-bezier(0.645, 0.045, 0.355, 1)'
easeOutBack = 'cubic-bezier(0.12, 0.4, 0.29, 1.46)'
easeInBack = 'cubic-bezier(0.71, -0.46, 0.88, 0.6)'
easeInOutBack = 'cubic-bezier(0.71, -0.46, 0.29, 1.46)'
easeOutCirc = 'cubic-bezier(0.08, 0.82, 0.17, 1)'
easeInCirc = 'cubic-bezier(0.6, 0.04, 0.98, 0.34)'
easeInOutCirc = 'cubic-bezier(0.78, 0.14, 0.15, 0.86)'
easeOutQuint = 'cubic-bezier(0.23, 1, 0.32, 1)'
easeInQuint = 'cubic-bezier(0.755, 0.05, 0.855, 0.06)'
easeInOutQuint = 'cubic-bezier(0.86, 0, 0.07, 1)'

# Border color
# base border outline a component
borderColorBase = '#d9d9d9'
# split border inside a component
borderColorSplit = '#e9e9e9'
# width of the border for a component
borderWidthBase = '1px'
# style of a components border
borderStyleBase = 'solid'

# Outline
outlineBlurSize = 0
outlineWidth = '2px'
outlineColor = primaryColor

# Disabled states
disabledColor = fade '#000', .25
disabledBg = backgroundColorBase
disabledColorDark = fade '#fff', .35

# Shadow
shadowColor = 'rgba(0, 0, 0, .2)'
shadow1Up = "0 -1px 6px #{shadowColor}"
shadow1Down = "0 1px 6px #{shadowColor}"
shadow1Left = "-1px 0 6px #{shadowColor}"
shadow1Right = "1px 0 6px #{shadowColor}"
shadow2 = "0 2px 8px #{shadowColor}"
boxShadowBase = shadow1Down

# Buttons
btnFontWeight = 500
btnBorderRadiusBase = borderRadiusBase
btnBorderRadiusSm = borderRadiusBase

btnPrimaryColor = '#fff'
btnPrimaryBg = primaryColor

btnDefaultColor = textColor
btnDefaultBg = '#fff'
btnDefaultBorder = borderColorBase

btnDangerColor = errorColor
btnDangerBg = backgroundColorBase
btnDangerBorder = borderColorBase

btnDisableColor = disabledColor
btnDisableBg = disabledBg
btnDisableBorder = borderColorBase

btnPaddingBase = '0 15px'
btnFontSizeLg = fontSizeLg
btnPaddingLg = btnPaddingBase
btnPaddingSm = '0 7px'

btnHeightBase = '28px'
btnHeightLg = '32px'
btnHeightSm = '22px'

btnCircleSize = btnHeightBase
btnCircleSizeLg = btnHeightLg
btnCircleSizeSm = btnHeightSm

btnGroupBorder = primary7

# Radio buttons
radioButtonBg = btnDefaultBg
radioButtonColor = btnDefaultColor

# Layout
layoutBodyBackground = '#ececec'
layoutHeaderBackground = '#404040'
layoutHeaderHeight = '64px'
layoutHeaderPadding = '0 50px'
layoutFooterPadding = '24px 50px'
layoutSiderBackground = layoutHeaderBackground
layoutTriggerHeight = '48px'
layoutTriggerBackground = tint headingColor, 20
layoutTriggerColor = '#fff'
layoutZeroTriggerWidth = '36px'
layoutZeroTriggerHeight = '42px'

# z-index list
zindexAffix = 10
zindexBackTop = 10
zindexModalMask = 1000
zindexModal = 1000
zindexNotification = 1010
zindexMessage = 1010
zindexPopover = 1030
zindexPicker = 1050
zindexDropdown = 1050
zindexTooltip = 1060

# Animation
animationDurationSlow = '.3s' # Modal
animationDurationBase = '.2s'
animationDurationFast = '.1s' # Tooltip

# Form
# Input
# Tooltip
# Popover
# Modal
# Progress
# Menu
# Spin
# Table
# Tag
# TimePicker
# Carousel
# Badge
# Rate
# Card
# Tabs
# BackTop
# Avatar

export {
  antPrefix

  primaryColor
  infoColor
  successColor
  errorColor
  highlightColor
  warningColor
  normalColor

  borderColorBase

  primary1
  primary2 
  primary5
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

  btnDangerColor
  btnDangerBg
  btnDangerBorder

  iconfontCssPrefix

  textColor

  easeOut
  easeIn
  easeInOut
  easeOutBack
  easeInBack
  easeInOutBack
  easeOutCirc
  easeInCirc
  easeInOutCirc
  easeOutQuint
  easeInQuint
  easeInOutQuint

  btnHeightLg
  btnPaddingLg
  btnFontSizeLg
  btnHeightSm
  btnPaddingSm
  btnBorderRadiusSm
}