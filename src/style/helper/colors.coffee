##
 # Colors
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default colors = (helper, {colors}) ->

  ##
   # Colors
   ##
  colorTypes =
    bg: 'backgroud' # Background colors
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
        {
          t...
          "#{prefix}#{i}":
            "#{colorTypes[prefix]}Color": colors["brandColor#{
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

    r

  , {}

  selectors
