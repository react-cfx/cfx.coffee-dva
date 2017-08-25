import EventEmiter from 'eventemitter3'

import { storiesOf } from '@storybook/react'
import WithEvents from '@storybook/addon-events'

import { prefixDom } from '../lib/coffee-dva/rw/Components'

import Logger from './Logger'

emiter = new EventEmiter()
emit = emiter.emit.bind emiter

EVENTS =
  TEST_EVENT_1: 'test-event-1'
  TEST_EVENT_2: 'test-event-2'
  TEST_EVENT_3: 'test-event-3'
  TEST_EVENT_4: 'test-event-4'

CFX = prefixDom {
  WithEvents
  Logger
}

{
  c_WithEvents
  c_Logger
} = CFX

export default ->
  storiesOf 'WithEvents', module
  .addDecorator (getStory) =>
    c_WithEvents {
      emit
      events: [

          name: EVENTS.TEST_EVENT_1
          title: 'Test event 1'
          payload: 0

        ,
          name: EVENTS.TEST_EVENT_2
          title: 'Test event 2'
          payload: 'Test event 2'

        ,
          name: EVENTS.TEST_EVENT_3
          title: 'Test event 3'
          payload:
            string: 'value'
            number: 123
            array: [ 1, 2, 3 ]
            object:
              string: 'value'
              number: 123
              array: [ 1, 2, 3 ]

        ,
          name: EVENTS.TEST_EVENT_4,
          title: 'Test event 4',
          payload: [
              string: 'value'
              number: 123
              array: [ 1, 2, 3 ]
            ,
              string: 'value'
              number: 123
              array: [ 1, 2, 3 ]
            ,
              string: 'value'
              number: 123
              array: [ 1, 2, 3 ]
          ]
      ]
    }
    , getStory()

  .add 'Logger'
  , => c_Logger { emiter }
