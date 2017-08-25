import colors, {
  fade
  tint
  shade
} from '../color/colors'

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

normal = '#d9d9d9'
fff = '#fff'
ooo = '#000'
eee = '#eee'
f7 = '#f7f7f7'
d9 = '#d9d9d9'
e9 = '#e9e9e9'

export default color = {
  normal
  fff
  ooo
  eee
  f7
  d9
  e9

  primary1
  primary2
  primary5
  primary7

  primary: colors.blue6
  info: colors.blue6
  success: colors.green6
  error: colors.red6
  highlight: colors.red6
  warning: colors.yellow6

  background:
    base: f7
    active: eee
    body: fff
    component: fff

  heading:
    base: fade ooo, .85
    dark: fade fff, .97

  border:
    base: normal

  # Disabled states
  disabled:
    base: fade '#000', .25
    dark: fade '#fff', .35
    bg: f7

  text:
    base: fade ooo, .65
    dark: fade fff, .91
    secondary: fade ooo, .43
    secondaryDark: fade fff, .67

  item:
    background:
      active: primary1
      hove: primary1

  # Shadow
  shadow: do ->
    base = 'rgba(0, 0, 0, .2)'
    sd =
      color: base
      one:
        up: "0 -1px 6px #{base}"
        down: "0 1px 6px #{base}"
        left: "-1px 0 6px #{base}"
        right: "1px 0 6px #{base}"
      two: "0 2px 8px #{base}"
    {
      sd...
      boxShadowBase: sd.one.down
    }

}