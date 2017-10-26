import { connect } from 'dva';
import styles from './Users.css';
import UsersComponent from '../components/Users/Users';
import MainLayout from '../components/MainLayout/MainLayout';
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  default: {
    'div'
  }
  MainLayout
  UsersComponent
}

Users = ({
  location
}) ->
  {
    c_MainLayout
    c_UsersComponent
    c_div
  } = CFX

  c_MainLayout {
    location
  }
  ,
    c_div
      className: styles.normal
    ,
      c_UsersComponent {}

export default connect() Users
