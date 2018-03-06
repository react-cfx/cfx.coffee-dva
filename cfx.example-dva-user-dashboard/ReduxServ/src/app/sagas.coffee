import dd from 'ddeyes'

import { toSaga } from 'cfx.redux'
import { sagaEffects } from 'cfx.redux-saga'
{ select } = sagaEffects

import services from '../services'

export default

  users: toSaga

    USER_FETCH: ({ types }) => (
      {
        type
        payload = {}
      }
      { dispatch }
    ) ->
    
      payload.page or= 1

      users = yield services.users.fetch
        page: payload.page

      yield dispatch.userSave {
        data: users
        # total: parseInt headers['x-total-count']
        # , 10
        total: 10
        page: parseInt payload.page
        , 10
      }

      users

    USER_REMOVE: ({ types }) => (
      {
        type
        payload = {}
      }
      { dispatch }
    ) ->

      { id } = payload

      user = yield services.users.remove
        id: payload.id

      yield dispatch.userReload()

      user

    USER_PATCH: ({ types }) => (
      {
        type
        payload = {}
      }
      { dispatch }
    ) ->

      {
        id
        values
      } = payload

      user = yield services.users.patch {
        id
        values
      }

      yield dispatch.userReload()

      user


    USER_CREATE: ({ types }) => (
      {
        type
        payload
      }
      { dispatch }
    ) ->

      { values } = payload

      user = yield services.users.create
        data: values

      yield dispatch.userReload()

      user

    USER_RELOAD: ({ types }) => (
      {
        type 
        payload
      }
      { dispatch }
    ) ->

      page = yield select (state) =>
        state.users.page

      users = yield dispatch.userFetch {
        page
      }

      users
