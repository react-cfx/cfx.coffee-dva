import { storiesOf } from '@storybook/react'
import { action } from '@storybook/addon-actions'
import centered from '@storybook/addon-centered'
import { Button } from '@storybook/react/demo'

import { prefixDom } from '../lib/coffee-dva/rw/Components'

CFX = prefixDom { Button }
{ c_Button } = CFX

export default ->
  storiesOf 'Centered Button', module
  .addDecorator centered
  .add 'with text', =>
    c_Button
      onClick: action 'clicked'
    , 'Hello Button'
