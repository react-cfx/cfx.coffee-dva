### eslint-disable import/first ###
import { prefixDom } from 'cfx.dom'
import {
  Link
} from 'dva/router'

CFX = prefixDom {
  Link
}

Users = ({
  children
}) =>
  { c_Link } = CFX
  c_Link
    to: '/users'
  , children

Index = ({
  children
}) =>
  { c_Link } = CFX
  c_Link
    to: '/'
  , children

Fof = Index

export {
  Users
  Index
  Fof
}
