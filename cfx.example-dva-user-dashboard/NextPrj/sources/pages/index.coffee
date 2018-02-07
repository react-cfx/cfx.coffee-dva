import { prefixDom } from 'cfx.dom'
import app from '../pagelibs/app'
import Head from '../pagelibs/header'

import { routes as Routes } from 'StoryView'
{ IndexPage } = Routes

CFX = prefixDom {
  'div'
  Head
  IndexPage
}

export default =>

  app.router =>

    {
      c_div
      c_Head
      c_IndexPage
    } = CFX

    c_div {}
    ,
      c_Head {}
      c_IndexPage {}
        # HeaderLink:
        #   Users: LinkUsers
        #   Index: LinkIndex
        #   Fof: LinkFof 

  Index = app.start()

  CFX = {
    CFX...
    (
      prefixDom {
        Index
      }
    )...
  }

  { c_Index } = CFX
  c_Index {}
