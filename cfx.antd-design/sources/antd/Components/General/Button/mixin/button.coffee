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

export default button =

  size: btnSize
  color: btnColor

  disabled: ->
    disabled = btnColor(
      btn.disable.color
      btn.disable.bg
      btn.disable.border
    )
    '.disabled': disabled
    '[disabled]':
      ':hover': disabled
      ':focus': disabled
      ':active': disabled
      '.active': disabled

  circle: (btnClassName = 'btn') -> {

    (square btn.circle.size)...

    (
      btnSize(
        btn.circle.size
        0
        "#{font.size.base} + 2px"
        '50%'
      )
    )...

    "&.#{btnClassName}-lg": {
      (square btn.circle.size.lg)...
      (
        btnSize(
          btn.circle.size.lg
          0
          "#{btn.font.size.lg} + 2px"
          '50%'
        )
      )...
    }

    "&.#{btnClassName}-sm": {
      (square btn.circle.size.sm)...
      (
        btnSize(
          btn.circle.size.sm
          0
          "#{btn.font.size.sm} + 2px"
          '50%'
        )
      )...
    }
  }
