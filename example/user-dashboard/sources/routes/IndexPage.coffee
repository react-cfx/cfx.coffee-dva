import React from 'react';
import { connect } from 'dva';
import styles from './IndexPage.css';
import { Components } from '../lib/coffee-dva/rw/Components'

IndexPage = ({
  location
}) ->
  {
    h1
  } = Components
  h1 {}
  , 'Hello World!!!'

export default connect() IndexPage
