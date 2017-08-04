##
 # Letter Spacing
 #
 # @param  {object} limit, incrementBy, responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default letterSpacing = (helpers) ->
  def_helpers =
    letterSpacing:
      limit: 10
      incrementBy: .1

  helpers =
    if helpers
    then {
      def_helpers...
      helpers...
    }
    else def_helpers

  {
    limit
    incrementBy
  } = helpers.letterSpacing

  selectors = {}

  ##
   # Letter Spacing
   ##
  for x in [1..limit]
    selectors["ls#{ x }"] =
      letterSpacing: "#{ x * incrementBy }rem"

  selectors
