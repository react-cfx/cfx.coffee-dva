import React, { Component } from 'react'
import Users from './Users'
import { prefixDom } from 'cfx.dom'

import { connect } from 'react-redux'

CFX = prefixDom {
  Users
}

class ConnUsers extends Component

  constructor: (props)->
    super props
    @state =
      list: []
      total: 0
      page: 0
    @

  componentWillMount: ->
    @props.fetch()
    @

  componentWillReceiveProps: (nextProps) ->
    {
      list
      total 
      page
    } = nextProps
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
  {
    list
    total
    page
  } = state.userApp.users
  {
    list
    total
    page
  }

mapDispatchToProps = (
  dispatch
) ->
  fetch: =>
    dispatch
      type: 'USER_FETCH'
      payload:
        page: 1

export default (
  connect mapStateToProps
  , mapDispatchToProps
) ConnUsers
