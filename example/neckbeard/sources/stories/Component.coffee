import { storiesOf } from '@storybook/react'
import { prefixDom } from '../lib/coffee-dva/rw/Components'
import H1 from '../compnents/H1'
import H2 from '../compnents/H2'
import H3 from '../compnents/H3'
import BlockQuote from '../compnents/BlockQuote'
import Code from '../compnents/Code'
import Copy from '../compnents/Copy'

CFX = prefixDom {
  default: {
    'div'
  }
  H1
  H2
  H3
  BlockQuote
  Code
  Copy
}

export default ->

  storiesOf 'Component', module

  .add 'HTitle'
  , =>
    {
      c_div
      c_H1
      c_H2
      c_H3
    } = CFX

    c_div {}
    ,

      c_H1 {}
      , 'Hello World!!!'

      c_H2 {}
      , 'Hello World!!!'

      c_H3 {}
      , 'Hello World!!!'

  .add 'Quote'
  , =>
    {
      c_div
      c_BlockQuote
      c_Code
      c_Copy
    } = CFX

    c_div {}
    ,

      c_BlockQuote {}
      , 'Hello World!!!'

      c_Copy {}
      , 'Hello World!!!'

      c_Code {}
      , 'Hello World!!!'