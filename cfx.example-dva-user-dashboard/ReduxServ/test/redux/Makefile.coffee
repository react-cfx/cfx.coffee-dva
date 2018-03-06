import dd from 'ddeyes'
import 'shelljs/make'

import { createApp } from 'cfx.redux'

import app from '../../src'

target.all = ->

  dd 'Hello World!!!'

target.static = ->

  dd { app }

target.dispatch = ->

  myApp = createApp
    reducers: app._._.reducers
    sagas: app._._.sagas
    subscriber: (store) =>
      dd store.getState()

  dd myApp.store.getState()

  dd await myApp.dispatch.userFetch
    page: 1

  dd await myApp.dispatch.userRemove
    id: 1

  dd await myApp.dispatch.userPatch
    id: 1
    values:
      username: 'FooTearth'
      email: 'footearth@gmail.com'
      phone: '13012345678'

  dd await myApp.dispatch.userCreate
    values:
      username: 'FooTearth'
      email: 'footearth@gmail.com'
      phone: '13012345678'
