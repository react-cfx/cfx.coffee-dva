import color from './color'
import animation from './animation'
import btn from './button'
import zindex from './zindex'
import border from './border'
import font from './font'

antPrefix = 'ant'

lineHeightBase = 1.5

# LINK
link =
  color: color.primary
  hover: color.primary5
  active: color.primary7
  HoverDecoration: 'none'

# Outline
outline =
  blurSize: 0
  width: '2px'
  color: color.primary

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
  lineHeightBase
  font
  link
  border
  outline
  color
  animation
  btn
  zindex
}
