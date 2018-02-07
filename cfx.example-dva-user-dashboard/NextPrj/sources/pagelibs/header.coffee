import { prefixDom } from 'cfx.dom'
import Head from 'next/head'

CFX = prefixDom {
  Head
  'title'
  'meta'
  'link'
}

export default =>

  {
    c_Head
    c_title
    c_meta
    c_link
  } = CFX

  c_Head {}
  ,
    c_title {}
    , 'My page title'
    c_meta
      name: 'viewport'
      content: 'width=device-width, initial-scale=1'
    c_link
      rel: 'stylesheet'
      type: 'text/css'
      href: 'https://cdn.bootcss.com/antd/3.1.6/antd.min.css'
