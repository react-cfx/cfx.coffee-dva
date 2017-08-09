import 'highlight.js/styles/atom-one-dark.css'

import { prefixDom } from '../lib/coffee-dva/rw/Components'
import * as Neckbeard from '../lib/coffee-dva/style'

nb = Neckbeard.create {}

CFX = prefixDom {
  default: {
    'code'
  } 
}

export default Code = ({
  children
  type = 'gray'
}) ->

  dataStyles = do ->
    baseStyles = [
      'ft3'
      'br3'
      'pv05'
      'ph05'
      'code'
    ]
    gray: [
      baseStyles...
      'brdr1'
      'bcg10'
      'bgg05'
    ]
    purple: [
      baseStyles...
      'xbrdr'
      'bg5'
      'tcw'
    ]

  {
    c_code
  } = CFX

  c_code {
    (nb dataStyles[type])...
  }
  , children
