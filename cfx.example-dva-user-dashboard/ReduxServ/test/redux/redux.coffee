import dd from 'ddeyes'
import 'shelljs/make'

import { createApp } from 'cfx.redux'
import app from '../../src'
# import app from '../../dist/bundle'

target.all = ->

  dd 'Hello World!!!'

target.static = ->

  dd { app }

target.reducers = ->

  myApp = createApp
    redux:
      reducers: app._._.reducers
      sagas: app._._.sagas
    subscriber:
      sync: (store) =>
        dd store.getState()

  dd await myApp.dispatch.userSave
    data: [
      name: 'hello'
      age: 18
    ]
    total: 10
    page: 1

target.sagas = ->

  subscriber = (
    prevState
    nextState
    action
    dispatch
  ) ->
    dd @getState()

  myApp = createApp
    redux:
      reducers: app._._.reducers
      sagas: app._._.sagas
    subscriber:
      sync: (store) =>
        dd store.getState()
      async: subscriber

  dd await myApp.dispatch.userFetch
    page: 1

  # dd myApp.store.getState()
