import { prefixDom } from 'cfx.dom'
import { connect } from 'dva'
import Users from './'
import {
  render
  getState
} from './common'

CFX = prefixDom {
  Users
}

CompUsers = ({
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

export default (connect mapStateToProps) CompUsers
