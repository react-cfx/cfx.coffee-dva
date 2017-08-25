##
 # Letter Spacing
 #
 # @param  {object} limit, incrementBy, responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default letterSpacing = ({
  limit = 10
  incrementBy = .1
}) ->
  selectors = {}

  ##
   # Letter Spacing
   ##
  for x in [1..limit]
    selectors["ls#{ x }"] =
      letterSpacing: "#{ x * incrementBy }rem"

  selectors
