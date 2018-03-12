import { prefixDom } from 'cfx.dom'
import MainLayout from '../../components/MainLayout';
import Page from './page'

export default ({
  location
  HeaderLink
  Users
}) ->

  CFX = prefixDom {
    'div'
    MainLayout
    Users
  }

  {
    c_MainLayout
    c_Users
    c_div
  } = CFX

  c_MainLayout {
    location
    HeaderLink
  }
  ,
    c_Users {}

export {
  Page
}
