### eslint-disable import/first ###
import { prefixDom } from 'cfx.dom'
import dva, { connect } from 'dva'
import { Router, Route } from 'dva/router'

# 1. Initializ
app = dva()

# 2. Model
app.model
  namespace: 'count'
  state: 0
  reducers:
    add: (count) -> count + 1
    minus: (count) -> count - 1

CFX = prefixDom {
  default: {
    'div'
    'h2'
    'button'
  }
  Router
  Route
}

# 3. View
app.reducers = ({ count }) => { count }
app.components = (props) ->
  {
    c_div
    c_h2
    c_button
  } = CFX

  c_div {}
  ,
    c_h2 {}
    , props.count
    c_button
      key: "add"
      onClick: ->
        props.dispatch
          type: 'count/add'
    , "+"
    c_button
      key: "minus"
      onClick: ->
        props.dispatch
          type: 'count/minus'
    , "-"

App = (connect app.reducers) app.components

# 4. Router
app.router ({history}) =>
  {
    c_Router
    c_Route
  } = CFX

  c_Router {
    history
  }
  ,
    c_Route
      path: "/"
      component: App

# 5. Start
app.start '#root'
