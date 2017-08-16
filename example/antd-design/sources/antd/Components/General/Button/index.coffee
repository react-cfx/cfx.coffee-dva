import { Button } from 'antd'
import { prefixDom } from '../../../../lib/coffee-dva/rw/Components'
import { cfxify } from '../../../../lib/coffee-dva/common/Cfxify'
import nb from '../../../../nb'
import buttonStyle from './button'

CFX = prefixDom {
  Button
}

export default (prop, state) ->

  {
    c_Button
  } = CFX

  {
    children
    otherProps...
  } = prop

  c_Button {
    otherProps...
    (nb buttonStyle)...
  }
  , children