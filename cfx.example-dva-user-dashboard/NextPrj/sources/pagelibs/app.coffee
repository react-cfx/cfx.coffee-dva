import { prefixDom } from 'cfx.dom'
import dva from 'dva-no-router'

# 1. Initialize
`const app = dva()`

export default (component) =>

  CFX = prefixDom {
    component
  }

  app.router =>

    { c_component } = CFX

    c_component {}

  Root = app.start()

  CFX = {
    CFX...
    (
      prefixDom {
        Root
      }
    )...
  }

  { c_Root } = CFX

  c_Root {}
