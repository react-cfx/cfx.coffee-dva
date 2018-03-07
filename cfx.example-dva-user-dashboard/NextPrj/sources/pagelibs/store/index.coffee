# import { ddbs as dd } from 'ddeyes'

import withRedux from 'next-redux-wrapper'
import nextReduxSaga from 'next-redux-saga'

import { app } from './store'

configureStore = => app.store

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
