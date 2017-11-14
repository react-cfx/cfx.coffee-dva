import MainLayout, { Header } from './components/MainLayout'

import Users, {
  UserForm
  UsersTable
  UserModal
} from './components/Users'

import {
  IndexPage
  Users as RouteUsers
} from './routes'

export components =
  MainLayout: {
    Index: MainLayout
    Header
  }
  Users: {
    Index: Users
    UserForm
    UsersTable
    UserModal
  }

export routes = {
  IndexPage
  Users: RouteUsers
}
