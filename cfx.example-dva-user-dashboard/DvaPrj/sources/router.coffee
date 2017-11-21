### eslint-disable import/first ###
import { Router, Switch, Route } from 'dva/router'
import dynamic from 'dva/dynamic'
import { prefixDom } from 'cfx.dom'

import { routes as Routes } from 'StoryView'
import ViewUsers from './components/Users'

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
    component: => Routes.IndexPage
  }

  Users = dynamic {
    app
    models: => [
      require './models/users'
    ]
    component: => Routes.Users ViewUsers
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
