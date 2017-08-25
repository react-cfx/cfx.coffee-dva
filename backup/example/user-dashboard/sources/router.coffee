import React from 'react'
import { Router } from 'dva/router'
import { cfxify } from './lib/coffee-dva/common/Cfxify'

c_Router = cfxify Router

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
