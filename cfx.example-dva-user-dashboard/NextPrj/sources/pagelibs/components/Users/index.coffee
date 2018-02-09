import React, { Component } from 'react'
import { prefixDom } from 'cfx.dom'

import { store } from 'ReduxServ'
{ actions } = store
import { connect } from 'cfx.react-redux'

import { components } from 'StoryView'
Users = components.Users.Index

CFX = prefixDom {
  Users
}

import {
  getState
} from './common'

class StoryUsers extends Component

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

    { c_Users } = CFX
    c_Users {
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
  StoryUsers
)
