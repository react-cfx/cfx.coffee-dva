import React from 'react';
import { connect } from 'dva';
import styles from './Users.css';
import UsersComponent from '../components/Users/Users';
import MainLayout from '../components/MainLayout/MainLayout';
import { cfxify } from '../lib/coffee-dva/common/Cfxify'
import {
  prefixDom
  Components
} from '../lib/coffee-dva/rw/Components'

CFX = prefixDom
  MainLayout: cfxify MainLayout
  UsersComponent: cfxify UsersComponent
  div: Components.div

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
