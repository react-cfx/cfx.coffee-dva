import queryString from 'query-string'
import reducers from './reducers'
import effects from './effects'

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