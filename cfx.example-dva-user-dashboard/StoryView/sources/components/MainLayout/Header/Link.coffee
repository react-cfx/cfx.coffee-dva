# import { ddbs as dd } from 'ddeyes'
import { prefixDom } from 'cfx.dom'

CFX = prefixDom {
  'a'
}

HocA = (link) => ({
  children
}) =>
  { c_a } = CFX
  c_a
    href: link
  , children

export default (
  Link
  DefaultConf
) =>

  (
    Object.keys DefaultConf
  ).reduce (r, c, i, a) =>
    {
      r...
      "#{c}":
        if Link?[c]?
        then Link[c]
        else HocA a[c]
    }
  , {}
