import { prefixDom } from 'cfx.dom'
import Link from 'next/link'

import { routes as Routes } from 'StoryView'
import ViewUsers from './components/Users'

IndexPage = Routes.IndexPage
Users = Routes.Users ViewUsers
# models: => [
#   require './models/users'
# ]

export default =>
  c_div {}
  ,
    c_Link {}
