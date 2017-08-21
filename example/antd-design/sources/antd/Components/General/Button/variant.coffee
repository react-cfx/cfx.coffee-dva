import tinycolor from 'tinycolor2'
import {
  btnPrimaryColor
  primaryColor
  primary7
} from '../../../Style/themes/default'
import { buttonColor } from './mixin'

buttonVariantOther = (color, backgroud, border) ->
  {
    (buttonColor color, backgroud, border)...
    ':hover': buttonColor primaryColor, backgroud, primaryColor
    ':focus': buttonColor primaryColor, backgroud, primaryColor

    ':active': buttonColor primary7, backgroud, primary7
    '.active': buttonColor primary7, backgroud, primary7
  }

buttonVariantPrimary = (color, backgroud) ->
  color5 = (tinycolor.mix backgroud, '#fff', 20).toHexString()
  color7 = (tinycolor.mix backgroud, '#000', 5).toHexString()
  {
    (buttonColor color, backgroud, backgroud)...
    ':hover': buttonColor color, color5, color5
    ':focus': buttonColor color, color5, color5

    ':active': buttonColor color, color7, color7
    '.active': buttonColor color, color7, color7
  }

buttonVariantGhost = (color) ->
  color5 = (tinycolor.mix color, '#fff', 20).toHexString()
  color7 = (tinycolor.mix color, '#000', 5).toHexString()
  {
    (buttonColor color, 'transparent', color)...
    ':hover': buttonColor color5, 'transparent', color5
    ':focus': buttonColor color5, 'transparent', color5

    ':active': buttonColor color7, 'transparent', color7
    '.active': buttonColor color7, 'transparent', color7
  }

buttonVariantDanger = (color, backgroud, border) ->
  color7 = (tinycolor.mix color, '#000', 5).toHexString()
  {
    (buttonColor color, backgroud, border)...
    ':hover': buttonColor btnPrimaryColor, color, color
    ':focus': buttonColor btnPrimaryColor, color, color

    ':active': buttonColor btnPrimaryColor, color7, color7
    '.active': buttonColor btnPrimaryColor, color7, color7
  }

export {
  buttonVariantOther
  buttonVariantPrimary
  buttonVariantGhost
  buttonVariantDanger
}