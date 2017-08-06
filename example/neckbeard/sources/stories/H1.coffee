import { storiesOf } from '@storybook/react'
import H1 from '../compnents/H1'
# import beardColors from '../lib/coffee-dva/style/utils/setBeardColors'
import { prefixDom } from '../lib/coffee-dva/rw/Components'

CFX = prefixDom {
  default: {
    'div'
  }
  H1
}

export default ->

  storiesOf 'H1', module

  .add 'H1'
  , =>
    {
      c_div
      c_H1
    } = CFX

    c_H1 {}
    , 'Hello World!!!'
    # , "#{JSON.stringify beardColors(), null, 2}"