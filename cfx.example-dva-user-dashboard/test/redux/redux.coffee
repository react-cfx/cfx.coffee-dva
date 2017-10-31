import dd from 'ddeyes'
import 'shelljs/make'

import constants from './users/constants'
import actions from './users/actions'
import reducers from './users/reducers'
import sagas from './users/sagas'

import { createStore } from 'cfx.redux'
import { SagaMiddleware } from 'cfx.redux-saga'

import onStateChange from 'redux-on-state-change'

target.all = ->

  dd 'Hello World!!!'

target.static = ->

  dd {
    constants
    actions
  }

target.reducers = ->

  store = createStore
    userApp: reducers

  unsubscribe = store.subscribe ->
    dd store.getState()

  store.dispatch actions.userSave
    data: [
      name: 'hello'
      age: 18
    ]
    total: 10
    page: 1

  unsubscribe()

target.sagas = ->

  subscriber = (
    prevState
    nextState
    action
    dispatch
  ) ->
    dd @getState()

  SagaMW = new SagaMiddleware()

  store = createStore
    userApp: reducers
  , [
    SagaMW.getMidleware()
    onStateChange (args...) ->
      subscriber.apply store, args
  ] 

  SagaMW.runSagas sagas

  store.dispatch actions.userFetch()
