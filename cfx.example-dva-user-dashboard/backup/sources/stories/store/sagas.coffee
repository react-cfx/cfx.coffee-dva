import { sagaEffects } from 'cfx.redux-saga'
import dd from 'ddeyes'
import constants from './constants'
import getUsersSagas from '../../models/users/effects'
import getUsersServ from '../../services/users'

default_host = [
  'https://cors-anywhere.herokuapp.com/'
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

{
  USER_FETCH
  USER_REMOVE
  USER_PATCH
  USER_CREATE
  USER_RELOAD
} = constants.types

users =

  fetch: (action) ->

    action.payload = {} unless action.payload?
    usersSagas.fetch action
    , {
      call
      put
    }

  remove: (action) ->
    usersSagas.remove action
    , {
      call
      put
    }

  patch: (action) ->
    usersSagas.patch action
    , {
      call
      put
    }

  create: (action) ->
    usersSagas.create action
    , {
      call
      put
    }

  reload: (action) ->
    usersSagas.reload action
    , {
      put
      select
    }

export default [
  ->
    yield takeLatest USER_FETCH
    , users.fetch
  ->
    yield takeLatest USER_REMOVE
    , users.remove
  ->
    yield takeLatest USER_PATCH
    , users.patch
  ->
    yield takeLatest USER_CREATE
    , users.create
  ->
    yield takeLatest USER_RELOAD
    , users.reload
]
