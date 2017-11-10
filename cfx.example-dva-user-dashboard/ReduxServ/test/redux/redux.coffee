import dd from 'ddeyes'
import 'shelljs/make'
# import { store } from '../../src'
import { store } from '../../dist/bundle'

{
  constants
  actions
  reducers
  sagas
  getStore
} = store

target.all = ->

  dd 'Hello World!!!'

  target.static()
  target.reducers()
  target.sagas()

target.static = ->

  dd {
    constants
    actions
  }

target.reducers = ->

  myStore = getStore {
    appName: 'userApp'
    reducers
    subscriber:
      sync: ->
        dd myStore.getState()
  }

  myStore.dispatch actions.userSave
    data: [
      name: 'hello'
      age: 18
    ]
    total: 10
    page: 1

  myStore.onsubscribe()

target.sagas = ->

  subscriber = (
    prevState
    nextState
    action
    dispatch
  ) ->
    dd @getState()

  myStore = getStore {
    appName: 'userApp'
    reducers
    sagas
    subscriber:
      async: subscriber
  }

  # dd actions.userFetch
  #   page: 1
  
  myStore.dispatch actions.userFetch
    page: 1
