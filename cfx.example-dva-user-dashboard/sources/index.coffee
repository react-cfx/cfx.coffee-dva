import dva from 'dva'
import createHistory from 'history/createBrowserHistory'
import createLoading from 'dva-loading'
import { message } from 'antd'

# import './index.html'
import './index.css'

ERROR_MSG_DURATION = 3

# 1. Initialize
app = dva
  history: createHistory()
  onError: (e) ->
    message.error e.message
    , ERROR_MSG_DURATION

# 2. Plugins
app.use createLoading()

# 3. Model
# Moved to router

# 4. Router
app.router require './router'

# 5. Start
app.start '#root'
