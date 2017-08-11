import { storiesOf } from '@storybook/react'
import { prefixDom } from '../lib/coffee-dva/rw/Components'

import Overview from '../pages/00_Overview'
import Installation from '../pages/01_Installation'
import Usage from '../pages/02_Usage'

CFX = prefixDom {
  Overview
  Installation
  Usage
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