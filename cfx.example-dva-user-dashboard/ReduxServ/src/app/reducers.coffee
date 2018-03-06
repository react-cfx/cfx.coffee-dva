# import dd from 'ddeyes'

import { toReducer } from 'cfx.redux'
import initStates from './initStates'

export default

  users: toReducer

    USER_SAVE: (
      state
      {
        payload: {
          data: list
          total
          page
        }
      }
    ) =>
      {
        state...
        list
        total
        page
      }

  , initStates.users
