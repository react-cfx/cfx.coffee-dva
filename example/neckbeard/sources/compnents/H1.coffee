import React from 'react'
import { prefixDom } from '../lib/coffee-dva/rw/Components'
import * as Neckbeard from '../lib/coffee-dva/style'
nb = Neckbeard.create {}

CFX = prefixDom {
  default: {
    'h1'
  } 
}

export default H1 = ({
  children
  type = 'dark'
}) ->

  dataStyles = do ->
    baseStyles = [
      'ft10'
      'pt1'
      'pb2'
      'xmv'
      'ls1'
      'uppercase'
      'fwnormal'
      'fwsemibold'
    ]
    dark: [
      baseStyles...
      'tcg90'
      'sans'
    ]
    light: [
      baseStyles...
      'pb2'
      'tcg20'
      'sans'
    ]

  {
    c_h1
  } = CFX

  c_h1 {
    (nb dataStyles[type])...
  }
  , children
