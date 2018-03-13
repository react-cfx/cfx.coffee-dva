import { prefixDom } from 'cfx.dom'
import MainLayout from '../../components/MainLayout'
import Page from './page'

CFX = prefixDom {
  MainLayout
  Page
}

export default ({
  location
  HeaderLink
}) ->

  {
    c_MainLayout
    c_Page
  } = CFX

  c_MainLayout {
    location
    HeaderLink
  }
  ,
    c_Page {}

export {
  Page
}
