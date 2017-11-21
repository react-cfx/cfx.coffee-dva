### eslint-disable import/first ###
import { prefixDom } from 'cfx.dom'
import { connect } from 'dva'

import { components } from 'StoryView'
Users = components.Users.Index

import {
  render
  getState
} from './common'

CFX = prefixDom {
  Users
}

DvaUsers = ({
  dispatch
  list
  # loading
  total
  page: current
}) ->

  render CFX
  , {
    list
    total
    current
  }

mapStateToProps = (state) ->
  # loading: state.loading.models.users
  getState state.users

export default (connect mapStateToProps) DvaUsers
