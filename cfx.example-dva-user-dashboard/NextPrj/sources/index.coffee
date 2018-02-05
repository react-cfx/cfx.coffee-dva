import { prefixDom } from 'cfx.dom'
import dva from 'dva'

# 1. Initialize
`const app = dva()`

# 4. Router
app.router require './router'

# 5. Start
Page = app.start()

CFX = prefixDom {
  Page
}

export default =>

  { c_Page } = CFX

  c_Page {}
