import { ddbs as dd } from 'ddeyes'
import { prefixDom } from 'cfx.dom'
import cowsay from 'cowsay-browser'

CFX = prefixDom {
  'pre'
}

export default =>
  { c_pre } = CFX

  _cowsay = cowsay.say
    text: 'hi there!'

  dd _cowsay

  c_pre {}
  ,
    _cowsay
