iconfontMixin =
  display: 'inline-block'
  fontStyle: 'normal'
  verticalAlign: 'baseline'
  textAlign: 'center'
  textTransform: 'none'
  lineHeight: 1
  textRendering: 'optimizeLegibility'
  fontSmoothing: 'antialiased'
  '&:before':
    display: 'block'
    fontFamily: 'anticon !important'

iconfontFont = (content) ->
  fontFamily: 'anticon'
  textRendering: 'optimizeLegibility'
  fontSmoothing: 'antialiased'
  content: content

export {
  iconfontFont
  iconfontMixin
}
