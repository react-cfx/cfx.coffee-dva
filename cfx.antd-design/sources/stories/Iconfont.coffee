import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import FontSet from '../antd/Components/General/Icon/demo'

CFX = prefixDom {
  FontSet
}

export default ->

  storiesOf 'iconfont', module

  .add 'direction'
  , =>

    {
      c_FontSet
    } = CFX

    c_FontSet
      catigory: 'direction'

  # .add 'suggestion'
  # , =>
  #
  #   {
  #     c_FontSet
  #   } = CFX
  #
  #   c_FontSet
  #     catigory: 'suggestion'
  #
  # .add 'logo'
  # , =>
  #
  #   {
  #     c_FontSet
  #   } = CFX
  #
  #   c_FontSet
  #     catigory: 'logo'
  #
  # .add 'other'
  # , =>
  #
  #   {
  #     c_FontSet
  #   } = CFX
  #
  #   c_FontSet
  #     catigory: 'other'
