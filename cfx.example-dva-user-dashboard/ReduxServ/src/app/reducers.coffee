# import dd from 'ddeyes'

import { toReducer } from 'cfx.redux'
import initStates from './initStates'
import usersReducers from '../models/users/reducers'

export default

  users: toReducer

    USER_SAVE: usersReducers.save

  , initStates.users
