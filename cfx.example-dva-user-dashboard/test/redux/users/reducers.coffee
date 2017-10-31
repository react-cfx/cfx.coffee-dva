import { reduxActions } from 'cfx.redux-actions'
{ handleActions } = reduxActions
import { mergeReduce } from 'cfx.redux'
import usersReducers from '../../../sources/models/users/reducers'
import dd from 'ddeyes'

initialState =
  list: []
  total: 0
  page: 0

users = handleActions

  USER_SAVE: usersReducers.save

, initialState

export default mergeReduce {
  users
}
, initialState
