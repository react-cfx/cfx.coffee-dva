import { prefixDom } from '../lib/coffee-dva/rw/Components'
import * as Neckbeard from '../lib/coffee-dva/style'
nb = Neckbeard.create {}

CFX = prefixDom {
  default: {
    'blockquote'
  } 
}

export default BlockQuote = ({
  children
}) ->
  {
    c_blockquote
  } = CFX

  c_blockquote {
    (nb [
      'bg3'
      'bc2'
      'pa2'
      'ft3'
      'ls1'
      'br3'
      'mb2'
      'tcw'
      'xbrdr'
      'sm-lh10'
    ])...
  }
  , children