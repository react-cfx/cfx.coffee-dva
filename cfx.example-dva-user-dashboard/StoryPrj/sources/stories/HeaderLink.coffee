import { prefixDom } from 'cfx.dom'
import LinkTo from '@storybook/addon-links/react'

CFX = prefixDom {
  LinkTo
}

HocLinkTo = (linkProps) =>
  ({
    children
  }) =>
    { c_LinkTo } = CFX
    c_LinkTo linkProps
    , children

Users = HocLinkTo
  kind: 'Route'
  story: 'Users'

Index = HocLinkTo
  kind: 'Route'
  story: 'IndexPage'

Fof = HocLinkTo
  kind: 'Route'
  story: 'IndexPage'

export {
  Users
  Index 
  Fof
}
