### eslint-disable import/first ###
import { prefixDom } from 'cfx.dom'
import {
  Router
  Switch
  Route
  Link
} from 'dva/router'
import dynamic from 'dva/dynamic'

import { routes as Routes } from 'StoryView'
import ViewUsers from './components/Users'
{ IndexPage } = Routes
RouteUsers = Routes.Users

CFX = prefixDom {
  Router
  Switch
  Route
  Link

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

LinkUsers = ({
  children
}) =>
  { c_Link } = CFX
  c_Link
    to: '/users'
  , children

LinkIndex = ({
  children
}) =>
  { c_Link } = CFX
  c_Link
    to: '/'
  , children

LinkFof = LinkIndex

RouterConfig = ({
  history
  app
}) ->

  IndexPage = dynamic {
    app
    component: => =>
      { c_IndexPage } = CFX
      c_IndexPage
        HeaderLink:
          Users: LinkUsers
          Index: LinkIndex
          Fof: LinkFof 
  }

  Users = dynamic {
    app
    models: => [
      require './models/users'
    ]
    component: => =>
      { c_Users } = CFX
      c_Users
        HeaderLink:
          Users: LinkUsers
          Index: LinkIndex
          Fof: LinkFof
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
