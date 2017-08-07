import { prefixDom } from '../lib/coffee-dva/rw/Components'
import * as Neckbeard from '../lib/coffee-dva/style'
nb = Neckbeard.create {}

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
