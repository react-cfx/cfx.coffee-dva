import tinycolor from 'tinycolor2'

colors =
  blue: '#108ee9'
  purple: '#7265e6'
  cyan: '#00a2ae'
  green: '#00a854'
  pink: '#f5317f'
  red: '#f04134'
  orange: '#f56a00'
  yellow: '#ffbf00'

colorPalette = (colorName, colorValue) ->
  [
    [ 90, 80, 60, 40, 20 ]
    [ 5, 25, 50, 65 ]
  ].reduce (r, c, i) ->

    index = Object
    .keys r
    .length

    if index is 5
      r = {
        r...
        "#{colorName}#{index + 1}": colorValue
      }
      index++

    c.reduce (_r, _c, _i) ->
      baseColor = if i is 0 then '#fff' else '#000'
      {
        _r...
        "#{colorName}#{index + _i + 1}":
          tinycolor.mix colorValue, baseColor, _c
          .toHexString()
      }
    , {
      r...
    }
  , {}

export default
  (Object.keys colors)
  .reduce (result, colorName) ->
    {
      result...
      (
        colorPalette colorName, colors[colorName]
      )...
    }
  , {}