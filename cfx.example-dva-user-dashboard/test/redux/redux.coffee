import dd from 'ddeyes'
import 'shelljs/make'
import {
  constants
  actions
  reducers
  sagas
  getStore
} from '../../sources/stories/store'

target.all = ->

  dd 'Hello World!!!'

target.static = ->

  dd {
    constants
    actions
  }

target.reducers = ->

  store = getStore {
    reducers
    subscriber:
      sync: ->
        dd store.getState()
  }

  store.dispatch actions.userSave
    data: [
      name: 'hello'
      age: 18
    ]
    total: 10
    page: 1

  store.onsubscribe()

target.sagas = ->

  subscriber = (
    prevState
    nextState
    action
    dispatch
  ) ->
    dd @getState()

  store = getStore {
    reducers
    sagas
    subscriber:
      async: subscriber
  }

  # dd actions.userFetch
  #   page: 1
  
  store.dispatch actions.userFetch
    page: 1
