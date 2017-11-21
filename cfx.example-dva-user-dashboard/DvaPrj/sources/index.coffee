### eslint-disable import/first ###
import dva from 'dva'
import createHistory from 'history/createBrowserHistory'
import createLoading from 'dva-loading'
import { message } from 'antd'

# import './index.html'
import './index.css'

import './dva'

ERROR_MSG_DURATION = 3

confDva =
  history: createHistory()
  onError: (e) ->
    message.error e.message
    , ERROR_MSG_DURATION

# 1. Initialize
`const app = dva(confDva)`

# 2. Plugins
app.use createLoading()

# 3. Model
# Moved to router

# 4. Router
app.router require './router'

# 5. Start
app.start '#root'
