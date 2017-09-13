iconfontMixin =
  display: 'inline-block'
  fontStyle: 'normal'
  verticalAlign: 'baseline'
  textAlign: 'center'
  textTransform: 'none'
  lineHeight: 1
  textRendering: 'optimizeLegibility'
  WebkitFontSmoothing: 'antialiased'
  MozOsxFontSmoothing: 'grayscale'
  '&:before':
    display: 'block'
    fontFamily: 'anticon !important'

iconfontFont = (content) ->
  fontFamily: 'anticon'
  textRendering: 'optimizeLegibility'
  WebkitFontSmoothing: 'antialiased'
  MozOsxFontSmoothing: 'grayscale'
  content: content

export {
  iconfontFont
  iconfontMixin
}
