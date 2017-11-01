import queryString from 'query-string'
import reducers from './reducers'
import getEffects from './effects'
import getUsersServ from '../../services/users'

effects = getEffects
  type: {
    'save'
    'fetch'
    'remove'
    'patch'
    'create'
    'reload'
  }
  service: getUsersServ()

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
