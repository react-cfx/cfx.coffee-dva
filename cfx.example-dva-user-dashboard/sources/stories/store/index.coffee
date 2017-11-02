import { createStore } from 'cfx.redux'
import { SagaMiddleware } from 'cfx.redux-saga'
import onStateChange from 'redux-on-state-change'

import constants from './constants'
import actions from './actions'
import reducers from './reducers'
import sagas from './sagas'

getStore = ({
  reducers
  options...
  # sagas
  # subscriber
  #   async:
  #   sync:
}) ->

  {
    subscriber
  } = options if options?.subscriber?

  if options?.sagas?
    SagaMW = new SagaMiddleware()

  store = createStore
    userApp: reducers
  , [
    (
      if options?.sagas?
      then [
        SagaMW.getMidleware()
      ]
      else []
    )...
    (
      if subscriber?.async?
      then [
        onStateChange (args...) ->
          subscriber.async.apply store, args
      ]
      else []
    )...
  ]

  if subscriber?.sync?
    store.onsubscribe = store.subscribe subscriber.sync

  if options?.sagas?
    SagaMW.runSagas options.sagas

  store

export {
  constants
  actions
  reducers
  sagas
  getStore
}

export default getStore {
  reducers
  sagas
}
