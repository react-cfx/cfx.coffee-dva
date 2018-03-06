import dd from 'ddeyes'
import 'shelljs/make'

import services from '../../src/services'

target.all = =>

  dd Object.keys services.users

  await target.userFetch()
  await target.userRemove()
  await target.userPatch()
  await target.userCreate()

target.userFetch = =>

  users = await services.users.fetch
    page: 1

  dd users

target.userRemove = =>

  r = await services.users.remove
    id: 1

  dd r

target.userPatch = =>

  r = await services.users.patch
    id: 1
    data:
      name: 'FooTearth'
      username: 'footearth'
      email: 'footearth@gmail.com'

  dd r

target.userCreate = =>

  r = await services.users.create
    data:
      name: 'FooTearth'
      username: 'footearth'
      email: 'footearth@gmail.com'

  dd r
