import { storiesOf } from '@storybook/react'
import { prefixDom } from '../lib/coffee-dva/rw/Components'

import App from '../App'

CFX = prefixDom {
  App
}

{
  c_App
} = CFX

export default ->

  storiesOf 'App', module
  .add 'full app', => c_App {}
