### eslint-disable import/first ###
import { Router, Switch, Route } from 'dva/router'
import dynamic from 'dva/dynamic'
# dva/link

import { prefixDom } from 'cfx.dom'

import { routes as Routes } from 'StoryView'
import ViewUsers from './components/Users'
{ IndexPage } = Routes
RouteUsers = Routes.Users

CFX = prefixDom {
  Router
  Switch
  Route

  IndexPage
  RouteUsers
}

Users = ({
  HeaderLink
}) =>
  { c_RouteUsers } = CFX
  c_RouteUsers {
    Users: ViewUsers
    HeaderLink
  }

CFX = {
  CFX...
  (
    prefixDom {
      Users
    }
  )...
}

RouterConfig = ({
  history
  app
}) ->

  IndexPage = dynamic {
    app
    component: => =>
      { c_IndexPage } = CFX
      c_IndexPage {}
      # HeaderLink:
      #   Users: LinkUsers
      #   Index: LinkIndex
      #   Fof: LinkFof 
  }

  Users = dynamic {
    app
    models: => [
      require './models/users'
    ]
    component: => =>
      { c_Users } = CFX
      c_Users {}
        # HeaderLink:
        #   Users: LinkUsers
        #   Index: LinkIndex
        #   Fof: LinkFof
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
