import React from 'react'
import { Router } from 'dva/router'
import { cfxify } from './lib/coffee-dva/common/Cfxify'

cfxRouter = cfxify Router

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
  routes =[
    path: '/'
    name: 'IndexPage'
    getComponent: (nextState, cb) ->
      require.ensure []
      , (require) =>
        cb null
        , require './routes/IndexPage'
  ]

  cfxRouter {
    history
    routes
  }

export default RouterConfig
