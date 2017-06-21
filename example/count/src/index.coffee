import React from 'react'
import dva, { connect } from 'dva'
import { Router, Route } from 'dva/router'

import { Cfxify } from './lib/coffee-dva/common/Cfxify'
import { Components } from './lib/coffee-dva/rw/Components'

# 1. Initializ
app = dva()

# 2. Model
app.model
  namespace: 'count'
  state: 0
  reducers:
    add: (count) -> count + 1
    minus: (count) -> count - 1

# 3. View
app.reducers = ({ count }) => { count }
app.components = (props) ->
  {
    div
    h2
    button
  } = Components
  div {}
  ,
    h2 {}
    , props.count
    button
      key: "add"
      onClick: ->
        props.dispatch
          type: 'count/add'
    , "+"
    button
      key: "minus"
      onClick: ->
        props.dispatch
          type: 'count/minus'
    , "-"
App = connect(app.reducers)(app.components)

# 4. Router
app.router ({history}) =>
  React.createElement(
    Router
    { history }
    React.createElement(
      Route
      ,
        path: "/"
        component: App
    )
  )
# 5. Start
app.start '#root'
