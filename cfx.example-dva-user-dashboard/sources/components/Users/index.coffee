import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'
import Users from './Users'
import actions from '../../stories/store/actions'

import { connect } from 'cfx.react-redux'

import {
  render
  getState
} from './service'

CFX = prefixDom {
  Users
}

class CompUsers extends Component

  constructor: (props) ->
    super props
    @state =
      list: []
      total: 0
      page: 0
    @

  componentWillMount: ->
    @props.actions.fetch()
    @

  componentWillReceiveProps: (nextProps) ->
    {
      list
      total 
      page
    } = nextProps.state
    @setState {
      list
      total
      page
    }
    @

  render: ->

    {
      list
      total
      current
    } = @state

    render CFX
    , {
      list
      total
      current
    }

mapStateToProps = (state) ->
  getState state.userApp.users

mapActionToProps =
  fetch: actions.userFetch

export default connect(
  mapStateToProps
  mapActionToProps
  CompUsers 
)
