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
      type: "primary"
    , 'Primary'
    c_nbButton
      type: "primary"
      disabled: true
    , 'Primary(disabled)'

    c_br {}

    c_nbButton {}
    , 'Default'
    c_nbButton
      disabled: true
    , 'Default(disabled)'

    c_br {}

    c_nbButton {}
    , 'Ghost'
    c_nbButton
      disabled: true
    , 'Ghost(disabled)'

    c_br {}

    c_nbButton
      type: "dashed"
    , 'Dashed'
    c_nbButton
      type: "dashed"
      disabled: true
    , 'Dashed(disabled)'
