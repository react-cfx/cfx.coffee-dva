import { storiesOf } from '@storybook/react'
import { action } from '@storybook/addon-actions'
import { withKnobs } from '@storybook/addon-knobs'
import { Button } from '@storybook/react/demo'
import { WithNotes } from '@storybook/addon-notes'

import { prefixDom } from '../lib/coffee-dva/rw/Components'

import ButtonKnobs from './ButtonKnobs'

CFX = prefixDom {
  Button
  WithNotes
}

{
  c_Button
  c_WithNotes
} = CFX

export default ->

  storiesOf 'Button', module
  .addDecorator withKnobs

  .add 'with text', =>
    c_Button
      onClick: action 'clicked'
    , 'Hello Button'

  .add 'with some emoji', =>
    c_Button
      onClick: action 'clicked'
    , '😀 😎 👍 💯'

  .add 'with notes', =>
    c_WithNotes
      notes: 'A very simple button'
    ,
      c_Button {}
      , 'Check my notes in the notes panel'

  .add 'with knobs', ButtonKnobs
  .addWithInfo(
    'with some info'
    'Use the [info addon](https://github.com/storybooks/storybook/tree/master/addons/info) with its painful API.'
    () =>
      c_Button {}
      , 'click the "?" in top right for info'
  )
