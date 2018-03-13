### eslint-disable import/first ###
# import { ddbs as dd } from 'ddeyes'

import { prefixDom } from 'cfx.dom'
import { Comps } from 'StoryView'
{ MainLayout } = Comps

import {
  app
  Provider
} from '../store'
{ store } = app

import withRouter from 'umi/withRouter'

import 'antd/dist/antd.css'

import {
  Users as LinkUsers
  Index as LinkIndex
  Fof as LinkFof
} from './Link'

CFX = prefixDom {
  # 'div'
  Provider
  MainLayout
}

export default withRouter ({
  location
  children
}) =>

  {
    # c_div
    c_Provider
    c_MainLayout
  } = CFX

  # if location.pathname is '/404'
  #   return (
  #     c_div {}
  #     , children
  #   )

  c_Provider {
    store
  }
  ,
    c_MainLayout {
      location
      HeaderLink:
        Users: LinkUsers
        Index: LinkIndex
        Fof: LinkFof
    }
    , children
