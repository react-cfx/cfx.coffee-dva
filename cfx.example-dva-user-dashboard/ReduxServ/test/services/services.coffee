import dd from 'ddeyes'
import 'shelljs/make'
# import { services as getUsersServ } from '../../src'
import { services as getUsersServ } from '../../dist/bundle'
default_host = 'http://jsonplaceholder.typicode.com'
usersServ = getUsersServ default_host

target.all = ->

  dd Object.keys usersServ

target.userFetch = ->

  users = await usersServ.fetch
    page: 1

  dd users

target.userRemove = ->

  r = await usersServ.remove 1
  dd r

target.userPatch = ->

  r = await usersServ.patch 1
  ,
    name: 'FooTearth'
    username: 'footearth'
    email: 'footearth@gmail.com'
  dd r

target.userCreate = ->

  r = await usersServ.create
    name: 'FooTearth'
    username: 'footearth'
    email: 'footearth@gmail.com'
  dd r
