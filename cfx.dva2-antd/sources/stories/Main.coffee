import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'

import SiderMain from '../components/Layout/SiderMain'

CFX = prefixDom {
   SiderMain
}

export default ->

  storiesOf 'Main', module

  .add 'SiderMain'
  , =>

    { c_SiderMain } = CFX
    c_SiderMain {}
