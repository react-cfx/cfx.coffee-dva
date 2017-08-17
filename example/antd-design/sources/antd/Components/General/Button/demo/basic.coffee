import { prefixDom } from '../../../../../lib/coffee-dva/rw/Components'
import nbButton from '../index'
import nb from '../../../../../nb'

CFX = prefixDom {
  default: {
    'div'
  }
  nbButton
}

export default =>
  {
    c_div
    c_nbButton
  } = CFX

  buttonStyle =
    style:
      marginRight: '8px'
      marginBottom: '12px'

  c_div {}
  ,

    c_nbButton {
      type: 'primary'
      buttonStyle...
    }
    , 'Primary'

    c_nbButton {
      className: 'active'
      buttonStyle...
    }
    , 'Default'

    c_nbButton {
      type: 'dashed'
      buttonStyle...
    }
    , 'Dashed'

    c_nbButton {
      type: 'danger'
      buttonStyle...
    }
    , 'Danger'