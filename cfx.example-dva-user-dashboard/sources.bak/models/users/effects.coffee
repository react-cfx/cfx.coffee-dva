import * as usersService from '../../services/users'

export default

  fetch: (
    {
      payload: {
        page = 1
      }
    }
    { call, put }
  ) ->
    {
      data
      headers
    } = yield call usersService.fetch
    , { page }

    yield put
      type: 'save'
      payload: {
        data
        total: parseInt headers['x-total-count']
        , 10
        page: parseInt page
        , 10
      }

    return

  remove: (
    {
      payload: id
    }
    { call, put }
  ) ->
    yield call usersService.remove, id
    yield put type: 'reload'
    return

  patch: (
    {
      payload: {
        id
        values
      }
    }
    { call, put }
  ) ->
    yield call usersService.patch, id, values
    yield put type: 'reload'
    return

  create: (
    {
      payload: values
    }
    { call, put }
  ) ->
    yield call usersService.create, values
    yield put type: 'reload'
    return

  reload: (
    action
    { put, select }
  ) ->
    page = yield select (state) =>
      state.users.page
    yield put
      type: 'fetch'
      payload: { page }
    return