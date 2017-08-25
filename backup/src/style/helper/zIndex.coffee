##
 # Z-index
 #
 # @param  {Number} limit=10
 # @param  {object} limit, incrementBy, responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default zindex = ({
  limit = 10
  incrementBy = 1
}) ->
  selectors = {}

  ##
   # z-index
   ##
  for x in [1..limit]
    selectors["zi#{ x }"] =
      zIndex: "#{ x }"

  selectors
