import { Router } from 'dva/router'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom { Router }

cached = {}

registerModel = (app, model) ->
  unless cached[model.namespace]
    app.model model
    cached[model.namespace] = 1
  return

RouterConfig = ({
  history
  app
}) ->
  { c_Router } = CFX

  routes = [
      path: '/'
      name: 'IndexPage'
      getComponent: (nextState, cb) ->
        require.ensure []
        , (require) =>
          cb null
          , require './routes/IndexPage'
    ,
      path: '/users'
      name: 'UsersPage'
      getComponent: (nextState, cb) ->
        require.ensure []
        , (require) =>
          registerModel app
          , require './models/users'
          cb null
          , require './routes/Users'
  ]

  c_Router {
    history
    routes
  }

export default RouterConfig
