import { btn } from '../../../../Style/themes'

btnSize = (
  height
  padding
  fontSize
  borderRadius
) -> {
  padding
  fontSize
  borderRadius
  height
}

btnColor = (color, backgroud, border) ->
  color: color
  backgroundColor: backgroud
  borderColor: border

  '> a:only-child':
    color: 'currentColor'
    ':after':
      content: '""'
      position: 'absolute'
      top: 0
      left: 0
      bottom: 0
      right: 0
      background: 'transparent'

btnDisabled = ->
  btnColor(
    btn.disable.color
    btn.disable.bg
    btn.disable.border
  )

export default
  size: btnSize
  color: btnColor
  disabled: btnDisabled
