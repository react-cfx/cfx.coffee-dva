import React, { Component } from 'react'
import json from 'format-json'
import PropTypes from 'prop-types'
import EventEmiter from 'eventemitter3'

import uuid from 'uuid/v4'

import { prefixDom } from '../lib/coffee-dva/rw/Components'

CFX = prefixDom
  default: [
    'h1'
    'dl'
    'dt'
    'dd'
    'b'
    'div'
  ]

EVENTS =
  TEST_EVENT_1: 'test-event-1'
  TEST_EVENT_2: 'test-event-2'
  TEST_EVENT_3: 'test-event-3'
  TEST_EVENT_4: 'test-event-4'

styles =
  wrapper:
    padding: 20
    fontFamily: """
      -apple-system, ".SFNSText-Regular", "San Francisco", "Roboto",
      "Segoe UI", "Helvetica Neue", "Lucida Grande", sans-serif
    """
    color: 'rgb(51, 51, 51)'
  item:
    listStyle: 'none'
    marginBottom: 10

export default class Logger extends Component

  propTypes =
    emiter:
      PropTypes
      .instanceOf EventEmiter
      .isRequired

  state:
    events: []

  onEventHandler: (name) => (payload) =>
    @setState ({
      events
    }) =>
      events:
        [].concat events
        , [{
          name
          id: uuid()
          payload
        }]

  componentWillMount: ->
    { emiter } = @props

    emiter.on EVENTS.TEST_EVENT_1
    , @onEventHandler EVENTS.TEST_EVENT_1
    emiter.on EVENTS.TEST_EVENT_2
    , @onEventHandler EVENTS.TEST_EVENT_2
    emiter.on EVENTS.TEST_EVENT_3
    , @onEventHandler EVENTS.TEST_EVENT_3
    emiter.on EVENTS.TEST_EVENT_4
    , @onEventHandler EVENTS.TEST_EVENT_4

  render: ->
    {
      c_h1
      c_dl
      c_dt
      c_dd
      c_b
      c_div
    } = CFX
    { events } = @state

    c_div
      style: styles.wrapper
    ,
      c_h1 {}
      , 'logger'
      c_dl {}
      ,
        events.map ({
          id
          name
          payload
        }) =>
          c_div
            style: styles.item
            key: id
          ,
            c_dt {}
            ,
              c_b {}
              , 'Event name:'
            , name
            c_dd {}
            ,
              c_b {}
              , 'Event payload:'
            , json.plain payload
