import { prefixDom } from 'cfx.dom'
import nb from '../nb'

CFX = prefixDom {
  default: {
    'div'
  }
}

##
 # Copy
 ##
export default Copy = ({ children }) =>

  text = {
    nb.ft5...
    nb.sans...
    nb.tcg50...
    nb.lh9...
    nb.fwlight...
    nb.mb2...
  }

  {
    c_div
  } = CFX

  c_div {
    (nb text)...
  }
  , children
