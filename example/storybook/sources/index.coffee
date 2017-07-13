import React from 'react'
import ReactDOM from 'react-dom'
import { document } from 'global'

import { prefixDom } from './lib/coffee-dva/rw/Components'

import App from './App'
import './index.css'

CFX = prefixDom { App }
{ c_App } = CFX

ReactDOM.render(
  c_App {}
  document.getElementById 'root'
)
