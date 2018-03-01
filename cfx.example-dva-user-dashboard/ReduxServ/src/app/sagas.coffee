import dd from 'ddeyes'

import { toSaga } from 'cfx.redux'
import { sagaEffects } from 'cfx.redux-saga'

import getUsersSagas from '../models/users/effects'
import getUsersServ from '../services/users'

default_host = [
  # 'https://cors-anywhere.herokuapp.com/'
  'http://jsonplaceholder.typicode.com'
].join ''

usersSagas = getUsersSagas
  type:
    save: 'USER_SAVE'
    fetch: 'USER_FETCH'
    remove: 'USER_REMOVE'
    patch: 'USER_PATCH'
    create: 'USER_CREATE'
    reload: 'USER_RELOAD'
  service: getUsersServ default_host

{
  call
  put
  select
  takeLatest
} = sagaEffects

export default

  users: toSaga

    USER_FETCH: ({ types }) => (action) ->
    
      action.payload = {} unless action.payload?

      yield from usersSagas.fetch action
      , {
        call
        put
      }

      success: true

    USER_REMOVE: ({ types }) => (action) ->

      yield from usersSagas.remove action
      , {
        call
        put
      }

      success: true

    USER_PATCH: ({ types }) => (action) ->

      yield from usersSagas.patch action
      , {
        call
        put
      }

      success: true

    USER_CREATE: ({ types }) => (action) ->

      yield from usersSagas.create action
      , {
        call
        put
      }

      success: true

    USER_RELOAD: ({ types }) => (action) ->

      yield from usersSagas.reload action
      , {
        put
        select
      }

      success: true
