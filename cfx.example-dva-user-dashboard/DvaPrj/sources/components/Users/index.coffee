### eslint-disable import/first ###
import { prefixDom } from 'cfx.dom'
import { connect } from 'dva'

import { components } from 'StoryView'
Users = components.Users.Index

import {
  getState
} from './common'

CFX = prefixDom {
  Users
}

DvaUsers = ({
  list
  # loading
  total
  page: current
}) ->

  { c_Users } = CFX
  c_Users {
    list
    total
    current
  }

mapStateToProps = (state) ->
  # loading: state.loading.models.users
  getState state.users

export default (connect mapStateToProps) DvaUsers
