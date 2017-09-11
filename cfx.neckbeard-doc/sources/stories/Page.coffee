import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Overview from '../pages/00_Overview'
import Installation from '../pages/01_Installation'
import Usage from '../pages/02_Usage'
import BreakPoints from '../pages/03_Breakpoints'
import Examples from '../pages/04_Examples'
import Border from '../pages/100_Border'
import BorderRadius from '../pages/101_BorderRadius'
import Color from '../pages/102_Colors'
import Display from '../pages/103_Display'
import Flexbox from '../pages/104_Flexbox'
import Float from '../pages/105_Float'
import Fonts from '../pages/106_Fonts'
import Grid from '../pages/107_Grid'
import LetterSpacing from '../pages/108_LetterSpacing'
import LineHeight from '../pages/109_LineHeight'
import Misc from '../pages/110_Misc'
import Overflow from '../pages/111_Overflow'
import Position from '../pages/112_Position'
import Spacing from '../pages/113_Spacing'
import TextAlignment from '../pages/114_TextAlignment'
import TextDecoration from '../pages/115_TextDecoration'
import ZIndex from '../pages/116_Zindex'

CFX = prefixDom {
  Overview
  Installation
  Usage
  BreakPoints
  Examples
  Border
  BorderRadius
  Color
  Display
  Flexbox
  Float
  Fonts
  Grid
  LetterSpacing
  LineHeight
  Misc
  Overflow
  Position
  Spacing
  TextAlignment
  TextDecoration
  ZIndex
}

export default ->

  storiesOf 'Page', module

  .add 'Overview'
  , =>
    {
      c_Overview
    } = CFX

    c_Overview {}

  .add 'Installation'
  , =>
    {
      c_Installation
    } = CFX

    c_Installation {}

  .add 'Usage'
  , =>
    {
      c_Usage
    } = CFX

    c_Usage {}

  .add 'BreakPoints'
  , =>
    {
      c_BreakPoints
    } = CFX

    c_BreakPoints {}

  .add 'Examples'
  , =>
    {
      c_Examples
    } = CFX

    c_Examples {}

  .add 'Border'
  , =>
    {
      c_Border
    } = CFX

    c_Border {}

  .add 'BorderRadius'
  , =>
    {
      c_BorderRadius
    } = CFX

    c_BorderRadius {}

  .add 'Color'
  , =>
    {
      c_Color
    } = CFX

    c_Color {}

  .add 'Display'
  , =>
    {
      c_Display
    } = CFX

    c_Display {}

  .add 'Flexbox'
  , =>
    {
      c_Flexbox
    } = CFX

    c_Flexbox {}

  .add 'Float'
  , =>
    {
      c_Float
    } = CFX

    c_Float {}

  .add 'Fonts'
  , =>
    {
      c_Fonts
    } = CFX

    c_Fonts {}

  .add 'Grid'
  , =>
    {
      c_Grid
    } = CFX

    c_Grid {}

  .add 'LetterSpacing'
  , =>
    {
      c_LetterSpacing
    } = CFX

    c_LetterSpacing {}

  .add 'LineHeight'
  , =>
    {
      c_LineHeight
    } = CFX

    c_LineHeight {}

  .add 'Misc'
  , =>
    {
      c_Misc
    } = CFX

    c_Misc {}

  .add 'Overflow'
  , =>
    {
      c_Overflow
    } = CFX

    c_Overflow {}

  .add 'Position'
  , =>
    {
      c_Position
    } = CFX

    c_Position {}

  .add 'Spacing'
  , =>
    {
      c_Spacing
    } = CFX

    c_Spacing {}

  .add 'TextAlignment'
  , =>
    {
      c_TextAlignment
    } = CFX

    c_TextAlignment {}

  .add 'TextDecoration'
  , =>
    {
      c_TextDecoration
    } = CFX

    c_TextDecoration {}

  .add 'ZIndex'
  , =>
    {
      c_ZIndex
    } = CFX

    c_ZIndex {}
