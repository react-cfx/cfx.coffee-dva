##
 # Colors
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default colors = ({
  colors
}) ->

  types = [ '05' ].concat do ->
    r = []
    for n in [1..9]
      r.push "#{n}0"
    r

  ##
   # Colors
   ##
  colorTypes =
    bg: 'background' # Background colors
    tc: '' # Text colors
    bc: 'border' # Border colors
  selectors = [
    'bg'
    'tc'
    'bc'
  ].reduce (r, prefix) ->

    r = Object.assign r
    ,
      "#{prefix}b":
        "#{colorTypes[prefix]}Color": colors.b
      "#{prefix}w":
        "#{colorTypes[prefix]}Color": colors.w
    , 
      [1..5].reduce (t, i) ->
        colorKey =
          if colorTypes[prefix] is ''
          then 'color'
          else "#{colorTypes[prefix]}Color"
        {
          t...
          "#{prefix}#{i}":
            "#{ colorKey }": colors["brandColor#{
              if i is 1
              then ''
              else i
            }"]
        }
      , {}
    ,
      "#{prefix}success":
        "#{colorTypes[prefix]}Color": colors.success
      "#{prefix}warning":
        "#{colorTypes[prefix]}Color": colors.warning
      "#{prefix}danger":
        "#{colorTypes[prefix]}Color": colors.danger

    ,
      types.reduce (t, i) ->
        colorKey =
          if colorTypes[prefix] is ''
          then 'color'
          else "#{colorTypes[prefix]}Color"
        {
          t...
          "#{ prefix }g#{ i }": 
            "#{ colorKey }": colors["g#{ i }"]
        }
      , {}

    r

  , {}

  selectors
