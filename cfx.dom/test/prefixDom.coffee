import dd from 'ddeyes'
import { prefixDom } from '../index.coffee'

dd Object.keys prefixDom
  default: [
    'div'
    'img'
    'h2'
    'p'
  ]

dd Object.keys prefixDom
  default: {
    'div'
    'img'
    'h2'
    'p'
  }
