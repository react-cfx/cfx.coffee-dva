import { bindActionCreators } from 'redux'
import * as ReactRedux from 'react-redux'

connect = (
  actionCreatorsBinder = bindActionCreators
  dispatcher
) =>

  (getState, actions, Component) =>

    ReactRedux.connect(

      (state) ->
        state: getState state

      (dispatch) ->
        dispatcher or= dispatch
        actions:
          actionCreatorsBinder actions, dispatcher

    ) Component

{ Provider } = ReactRedux

export {
  Provider
  connect
}
