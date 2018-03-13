### eslint-disable import/first ###
import { prefixDom } from 'cfx.dom'
import Link from 'umi/link'

CFX = prefixDom {
  Link
}

HocLinkTo = (linkWhere) =>
  ({
    children
  }) =>

    { c_Link } = CFX

    c_Link
      to: linkWhere
    , children

Users = HocLinkTo '/users'
Index = HocLinkTo '/'
Fof = HocLinkTo '/404'

export {
  Users
  Index 
  Fof
}
