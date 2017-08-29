import color from './color'
import border from './border'
import font from './font'

btnDefault =
  color: color.text.base
  bg: color.fff
  border: border.color.base

btnHeight =
  base: '28px'
  lg: '32px'
  sm: '22px'

# Buttons
export default btn = do ->

  height: btnHeight
  default: btnDefault 
  
  font:
    weight: 500
    size:
      lg: font.size.lg

  border:
    radius:
      base: border.radius.base
      sm: border.radius.base

  primary:
    color: color.fff
    bg: color.primary

  danger:
    color: color.error
    bg: color.background.base
    border: color.border.base

  disable:
    color: color.disabled.base
    bg: color.disabled.bg
    border: color.border.base

  padding: do ->
    base = '0 15px'
    base: base
    lg: base
    sm: '0 7px'

  circle:
    size:
      base: btnHeight.base
      lg: btnHeight.lg
      sm: btnHeight.sm

  # btnGroupBorder = primary7

  # Radio buttons
  radio:
    bg: btnDefault.bg
    color: btnDefault.color
