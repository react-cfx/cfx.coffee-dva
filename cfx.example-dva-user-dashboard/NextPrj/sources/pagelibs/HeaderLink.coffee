import { prefixDom } from 'cfx.dom'
import Link from 'next/link'

CFX = prefixDom {
  'a'
  Link
}

HocLinkTo = (linkWhere) =>
  ({
    children
  }) =>
    {
      c_a
      c_Link
    } = CFX
    c_Link
      href: linkWhere
    ,
      c_a {}
      , children

Users = HocLinkTo '/users'
Index = HocLinkTo '/'
Fof = HocLinkTo '/404'

export {
  Users
  Index 
  Fof
}
