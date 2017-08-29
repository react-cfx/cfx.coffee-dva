import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import Overview from '../pages/00_Overview'
import Installation from '../pages/01_Installation'
import Usage from '../pages/02_Usage'
import Breakpoints from '../pages/03_Breakpoints'
import Examples from '../pages/04_Examples'

CFX = prefixDom {
  Overview
  Installation
  Usage
  Breakpoints
  Examples
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

  .add 'Breakpoints'
  , =>
    {
      c_Breakpoints
    } = CFX

    c_Breakpoints {}

  .add 'Examples'
  , =>
    {
      c_Examples
    } = CFX

    c_Examples {}
