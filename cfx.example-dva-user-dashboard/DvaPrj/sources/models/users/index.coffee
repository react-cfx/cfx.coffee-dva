### eslint-disable import/first ###
import queryString from 'query-string'

import {
  models
  services as getUsersServ
} from 'ReduxServ'
{ reducers } = models
getEffects = models.effects

effects = getEffects
  type: {
    'save'
    'fetch'
    'remove'
    'patch'
    'create'
    'reload'
  }
  service: getUsersServ 'api'

export default {
  namespace: 'users'

  state:
    list: []
    total: null
    page: null

  reducers
  effects

  subscriptions:
    setup: ({
      dispatch
      history
    }) ->
      history.listen ({ pathname, search }) =>
        query = queryString.parse search
        if pathname is '/users'
          dispatch
            type: 'fetch'
            payload: query
}
