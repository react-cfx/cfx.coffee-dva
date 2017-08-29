import { Button } from 'antd'
import { prefixDom } from 'cfx.dom'
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
    (nb buttonStyle)...
    otherProps...
  }
  , children
