import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import BasicButton from '../antd/Components/General/Button/demo/00_basic'
import IconButton from '../antd/Components/General/Button/demo/01_icon'
import DisabledButton from '../antd/Components/General/Button/demo/02_disabled'

CFX = prefixDom {
  BasicButton
  IconButton
  DisabledButton
}

export default ->

  storiesOf 'Button', module

  .add 'BasicButton'
  , =>

    {
      c_BasicButton
    } = CFX

    c_BasicButton {}

  .add 'IconButton'
  , =>

    {
      c_IconButton
    } = CFX

    c_IconButton {}

  .add 'DisabledButton'
  , =>

    {
      c_DisabledButton
    } = CFX

    c_DisabledButton {}
