import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import BasicButton from '../antd/Components/General/Button/demo/basic'

CFX = prefixDom {
  BasicButton
}

export default ->

  storiesOf 'Button', module

  .add 'BasicButton'
  , =>

    {
      c_BasicButton
    } = CFX

    c_BasicButton {}
