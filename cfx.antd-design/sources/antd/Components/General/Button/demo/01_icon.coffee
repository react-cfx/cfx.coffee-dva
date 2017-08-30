import { prefixDom } from 'cfx.dom'
import nbButton from '../index'
import nb from '../../../../../nb'

CFX = prefixDom {
  default: {
    'div'
    'br'
  }
  nbButton
}

export default =>
  {
    c_div
    c_br
    c_nbButton
  } = CFX

  c_div {}
  ,
    c_nbButton
      type: 'primary'
      shape: 'circle'
      icon: 'search'
    c_nbButton
      type: 'primary'
      icon: 'search'
    , 'Search'
    c_nbButton
      shape: 'circle'
      icon: 'search'
    c_nbButton
      icon: 'search'
    , 'Search'

    c_br {}

    c_nbButton
      shape: 'circle'
      icon: 'search'
    c_nbButton
      icon: 'search'
    , 'Search'
    c_nbButton
      type: 'dashed'
      shape: 'circle'
      icon: 'search'
    c_nbButton
      type: 'dashed'
      icon: 'search'
    , 'Search'
