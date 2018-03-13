### eslint-disable import/first ###
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  'div'
}

export default =>

  { c_div } = CFX

  c_div {}
  , 'Hello Wolrd!!!'
