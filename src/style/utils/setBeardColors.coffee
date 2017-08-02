import color from 'color'
import rgbHex from 'rgb-hex'
import dd from 'ddeyes'

# Default Beard Colors
#######################
export beardColors =
  white: "#ffffff"
  black: "#000000"
  brandColor: "#c397d8"
  success: "#b9ca4a"
  warning: "#e78c45"
  danger: "#d54e53"

##
 # Sets Beard Colors
 # @param {object} beardColors
 # @return {object}
 ##
export default setBeardColors = (
  colors = beardColors
) ->

  colors = {
    beardColors...
    colors...
  }

  bcs =
    brandColor: colors.brandColor
    b: colors.black
    w: colors.white
    success: colors.success
    warning: colors.warning
    danger: colors.danger

  defineGet = (obj, name, func) ->
    Object.defineProperty obj
    , name
    ,
      get: func

  types = [ '05' ].concat do ->
    r = []
    for n in [1..9]
      r.push "#{n}0"
    r

  # dd {
  #   types
  # }

  types.map (t) ->
    defineGet bcs, "g#{t}"
    , ->
      "#" + rgbHex.apply @, (
        color colors.white
        .darken "0.#{t}0"
        # .rgbNumber()
        .rgb()
        .array()
      )

  [2..5].map (t) ->
    defineGet bcs, "brandColor#{t}"
    , ->
      "#" + rgbHex.apply @, (
        color @["brandColor#{
          if t is 2
          then ''
          else t - 1
        }"]
        .darken 0.05
        # .rgbNumber()
        .rgb()
        .array()
      )

  bcs