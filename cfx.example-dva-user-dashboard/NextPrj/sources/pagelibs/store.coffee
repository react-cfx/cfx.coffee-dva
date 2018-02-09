import { ddbs as dd } from 'ddeyes'
import withRedux from 'next-redux-wrapper'
import nextReduxSaga from 'next-redux-saga'
import { store } from 'ReduxServ'
userStore = store.store

configureStore = => userStore

withReduxSaga = (BaseComponent) =>
  (
    withRedux configureStore
    , (state) => state
  )(
    nextReduxSaga BaseComponent
  )

export {
  configureStore
  withReduxSaga
}
