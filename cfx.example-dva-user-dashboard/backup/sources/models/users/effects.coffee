import dd from 'ddeyes'

export default ({
  type 
  service
}) ->

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
    } = yield call service.fetch
    , { page }

    yield put
      type: type.save
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
    yield call service.remove, id
    yield put 
      type: type.reload
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
    yield call service.patch, id, values
    yield put type: type.reload
    return

  create: (
    {
      payload: values
    }
    { call, put }
  ) ->
    yield call service.create, values
    yield put type: type.reload
    return

  reload: (
    action
    { put, select }
  ) ->
    page = yield select (state) =>
      state.users.page
    yield put
      type: type.fetch
      payload: { page }
    return
