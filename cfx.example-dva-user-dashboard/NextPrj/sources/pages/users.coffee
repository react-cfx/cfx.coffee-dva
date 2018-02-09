import { ddbs as dd } from 'ddeyes'
import { prefixDom } from 'cfx.dom'
import app from '../pagelibs/app'
import Head from '../pagelibs/header'
import {
  Users as LinkUsers
  Index as LinkIndex
  Fof as LinkFof
} from '../pagelibs/HeaderLink'

import { routes as Routes } from 'StoryView'
import ViewUsers from '../pagelibs/components/Users'
RouteUsers = Routes.Users

import { withReduxSaga } from '../pagelibs/store'

CFX = prefixDom {
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
      'div'
      Head
      Users
    }
  )...
}

Component = =>

  {
    c_div
    c_Head
    c_Users
  } = CFX

  c_div {}
  ,
    c_Head {}
    c_Users
      HeaderLink:
        Users: LinkUsers
        Index: LinkIndex
        Fof: LinkFof 

Component.getInitialProps = ({
  store
}) =>
  dd store: store.getState()  

export default withReduxSaga Component
