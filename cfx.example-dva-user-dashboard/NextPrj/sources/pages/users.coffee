import { prefixDom } from 'cfx.dom'
import cowsay from 'cowsay-browser'

CFX = prefixDom {
  'pre'
}

export default =>
  { c_pre } = CFX

  _cowsay = cowsay.say
    text: 'hi users!'

  c_pre {}
  ,
    _cowsay
