import { storiesOf } from '@storybook/react'
import { prefixDom } from '../lib/coffee-dva/rw/Components'

import Overview from '../pages/00_Overview'
import Installation from '../pages/01_Installation'
import Usage from '../pages/02_Usage'
import Breakpoints from '../pages/03_Breakpoints'

CFX = prefixDom {
  Overview
  Installation
  Usage
  Breakpoints
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