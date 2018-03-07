# import { ddbs as dd } from 'ddeyes'

import app from 'ReduxServ'

import {
  Provider
  connectBindApp
} from 'cfx.react-redux'

export connect = connectBindApp app
export {
  app
  Provider
}
