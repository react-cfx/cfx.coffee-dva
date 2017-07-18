import { storiesOf } from '@storybook/react'
import Login from '../components/Login'

import { prefixDom } from '../lib/coffee-dva/rw/Components'

CFX = prefixDom { Login }

export default ->

  storiesOf 'Login', module
  .add 'Login'
  , =>
    { c_Login } = CFX
    c_Login {}
