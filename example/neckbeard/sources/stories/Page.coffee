import { storiesOf } from '@storybook/react'
import { prefixDom } from '../lib/coffee-dva/rw/Components'

import installation from '../pages/installation'

CFX = prefixDom {
  installation
}

export default ->

  storiesOf 'Page', module

  .add 'installation'
  , =>
    {
      c_installation
    } = CFX

    c_installation {}