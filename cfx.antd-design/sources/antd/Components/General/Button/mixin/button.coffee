import {
  btn
  font
} from '../../../../Style/themes'
import { square } from '../../../../Style/mixins/size'

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

btnCircle = (btnClassName = 'btn') ->
  square btn.circle.size
  btnSize btn.circle.size, 0
  , "#{font.size.base + 2}px", '50%'

export default
  size: btnSize
  color: btnColor
  disabled: btnDisabled
  circle: btnCircle
