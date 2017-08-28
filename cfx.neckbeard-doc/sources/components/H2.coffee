import { prefixDom } from 'cfx.dom'
import nb from '../nb'

CFX = prefixDom {
  default: {
    'h2'
  }
}

export default H2 = ({
  children
}) ->
  {
    c_h2
  } = CFX

  c_h2 {
    (nb "ft17 pv2 xmv bc1 ls1 sans fwlight")...
  }
  , children
