import React from 'react'
import { Router, Switch, Route } from 'dva/router'
import dynamic from 'dva/dynamic'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  Router
  Switch
  Route
}

RouterConfig = ({
  history
  app
}) ->
  IndexPage = dynamic {
    app
    component: => require './routes/IndexPage'
  }

  Users = dynamic {
    app
    models: => [
      require './models/users'
    ]
    component: => require './routes/Users'
  }

  {
    c_Router
    c_Switch
    c_Route
  } = CFX

  c_Router {
    history
  }
  ,
    c_Switch {}
    ,
      c_Route
        exact: true
        path: '/'
        component: IndexPage
      c_Route
        exact: true
        path: '/users'
        component: Users

export default RouterConfig
