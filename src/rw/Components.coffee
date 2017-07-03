import { cfxify } from '../common/Cfxify'

Components = [
  'script', 'style'

  'div', 'span'

  'p'

  'br', 'hr'

  'ul', 'ol', 'li'

  'nav', 'aside'
  'header', 'footer'
  'article', 'section'

  'col'

  'h1', 'h2', 'h3', 'h4', 'h5', 'h6'

  'a', 'i', 'b'
  'strong'

  'label', 'input'

  'button', 'img'

  'pre', 'code'
].reduce (result, component, index, array) ->
  result[component] = cfxify component
  result
, {}

prefixDom = (waitForPrefix) ->
  cfxDom = {}
  for domItemName, domItem of waitForPrefix
    cfxDom["c_#{domItemName}"] = domItem
  cfxDom

export {
  prefixDom
  Components
}
