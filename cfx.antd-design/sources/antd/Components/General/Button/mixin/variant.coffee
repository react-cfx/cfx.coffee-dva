import tinycolor from 'tinycolor2'
import * as theme from '../../../../Style/themes'
import btn from './button'

export default variant =

  other: (color, backgroud, border) ->
    hover = btn.color(
      theme.color.primary
      backgroud
      theme.color.primary
    )
    active = btn.color(
      theme.color.primary7
      backgroud
      theme.color.primary7
    )
    {
      (btn.color color, backgroud, border)...
      ':hover': hover
      ':focus': hover

      ':active': active
      '.active': active
      btn.disabled()...
    }

  primary: (color, backgroud) ->
    color5 = (tinycolor.mix backgroud, '#fff', 20)
      .toHexString()
    color7 = (tinycolor.mix backgroud, '#000', 5)
      .toHexString()
    {
      (btn.color color, backgroud, backgroud)...
      ':hover': btn.color color, color5, color5
      ':focus': btn.color color, color5, color5

      ':active': btn.color color, color7, color7
      '.active': btn.color color, color7, color7
      btn.disabled()...
    }

  ghost: (color) ->
    color5 = (tinycolor.mix color, '#fff', 20)
      .toHexString()
    color7 = (tinycolor.mix color, '#000', 5)
      .toHexString()
    {
      (btn.color color, 'transparent', color)...
      ':hover': btn.color color5, 'transparent', color5
      ':focus': btn.color color5, 'transparent', color5

      ':active': btn.color color7, 'transparent', color7
      '.active': btn.color color7, 'transparent', color7
      btn.disabled()...
    }

  danger: (color, backgroud, border) ->
    color7 = (tinycolor.mix color, '#000', 5)
      .toHexString()
    {
      (btn.color color, backgroud, border)...
      ':hover': btn.color theme.btn.primary.color, color, color
      ':focus': btn.color theme.btn.primary.color, color, color

      ':active': btn.color theme.btn.primary.color, color7, color7
      '.active': btn.color theme.btn.primary.color, color7, color7
      btn.disabled()...
    }
