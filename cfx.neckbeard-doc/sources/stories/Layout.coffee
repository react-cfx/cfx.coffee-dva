import { storiesOf } from '@storybook/react'
import { prefixDom } from 'cfx.dom'
import Footer from '../layout/Footer'
import Header from '../layout/Header'
import Nav from '../layout/Nav'

CFX = prefixDom {
  default: {
    'div'
  }
  Nav
  Header
  Footer
}

export default ->

  storiesOf 'Layout', module

  .add 'Nav'
  , =>

    {
      c_Nav
    } = CFX

    c_Nav {}

  .add 'Header'
  , =>

    {
      c_Header
    } = CFX

    c_Header {}

  .add 'Footer'
  , =>

    {
      c_Footer
    } = CFX

    c_Footer {}
