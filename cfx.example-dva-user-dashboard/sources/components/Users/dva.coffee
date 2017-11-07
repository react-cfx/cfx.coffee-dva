import Users from './Users'
import { prefixDom } from 'cfx.dom'
import { connect } from 'dva'
import {
  render
  getState
} from './service'

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
