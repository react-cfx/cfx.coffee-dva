buttonSize = (
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

buttonColor = (color, backgroud, border) ->
  color: color
  backgroundColor: backgroud
  borderColor: border

  '> a:only-child':
    color: 'currentColor'
    ':after':
      content: ''
      position: 'absolute'
      top: 0
      left: 0
      bottom: 0
      right: 0
      background: 'transparent'

buttonDisabled = ->
  disabledButtonColor = buttonColor(
    btnDisableColor
    btnDisableBg
    btnDisableBorder
  )

export {
  buttonSize
  buttonColor
}
