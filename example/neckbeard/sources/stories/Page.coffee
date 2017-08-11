import { storiesOf } from '@storybook/react'
import { prefixDom } from '../lib/coffee-dva/rw/Components'

import Overview from '../pages/Overview'
import installation from '../pages/installation'

CFX = prefixDom {
  Overview
  installation
}

export default ->

  storiesOf 'Page', module

  .add 'Overview'
  , =>
    {
      c_Overview
    } = CFX

    c_Overview {}

  .add 'installation'
  , =>
    {
      c_installation
    } = CFX

    c_installation {}