import color from './color'

# Layout
export default layout = do ->
  header =
    bg: '#404040'
    height: '64px'
    padding: '0 50px'

  header: header
  body:
    bg: '#ececec'
  footer:
    padding: '24px 50px'
  sider:
    background: header.bg
  trigger:
    height: '48px'
    bg: tint color.heading.base, 20
    color: color.fff
    zero:
      width: '36px'
      height: '42px'
