import logo from '../../public/logo.svg'
import './index.css'

import { prefixDom } from '../lib/coffee-dva/rw/Components'

CFX = prefixDom
  default: [
    'div'
    'img'
    'h2'
    'p'
    'code'
  ]

export default =>
  {
    c_div
    c_img
    c_h2
    c_p
    c_code
  } = CFX

  c_div
    className: 'App'
  ,
    c_div
      className: 'App-header'
    ,
      c_img
        src: logo
        className: 'App-logo'
        alt: 'logo'
      c_h2 {}
      , 'Welcome to React'
    c_p
      className: 'App-intro'
    , 'To get started, edit '
    ,
      c_code {}
      , 'src/App.js'
    , ' and save to reload.'
