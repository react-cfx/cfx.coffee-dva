import { prefixDom } from 'cfx.dom'
import app from '../pagelibs/app'
import Head from '../pagelibs/header'
import {
  Users as LinkUsers
  Index as LinkIndex
  Fof as LinkFof
} from '../pagelibs/HeaderLink'

import { routes as Routes } from 'StoryView'
{ IndexPage } = Routes

CFX = prefixDom {
  'div'
  Head
  IndexPage
}

export default =>

  app =>

    {
      c_div
      c_Head
      c_IndexPage
    } = CFX

    c_div {}
    ,
      c_Head {}
      c_IndexPage
        HeaderLink:
          Users: LinkUsers
          Index: LinkIndex
          Fof: LinkFof 
