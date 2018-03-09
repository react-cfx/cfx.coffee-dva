import { prefixDom } from 'cfx.dom'
import { linkTo } from '@storybook/addon-links'
# import LinkTo from '@storybook/addon-links/react'

CFX = prefixDom {
  'a'
}

HocLinkTo = (linkWhere...) =>
  ({
    children
  }) =>
    { c_a } = CFX
    c_a
      href: "javascript: void(0);"
      onClick: linkTo.apply null, linkWhere
    , children

Index = HocLinkTo 'Pages', 'Home'
Users = HocLinkTo 'Pages', 'Users'
Fof = HocLinkTo 'Pages', 'Home'

export {
  Users
  Index 
  Fof
}
