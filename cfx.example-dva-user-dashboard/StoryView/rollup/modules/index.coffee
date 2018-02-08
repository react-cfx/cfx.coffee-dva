import MainLayout, { Header } from '../../sources/components/MainLayout'

import Users, {
  UserForm
  UsersTable
  UserModal
} from '../../sources/components/Users'

import {
  IndexPage
  Users as RouteUsers
} from '../../sources/routes'

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
