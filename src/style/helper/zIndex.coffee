##
 # Z-index
 #
 # @param  {Number} limit=10
 # @param  {object} limit, incrementBy, responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default zindex = (helpers) ->
  selectors = {}

  def_helpers =
    zIndex:
      limit: 10
      incrementBy: 1

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
  } = helpers.zIndex

  ##
   # z-index
   ##
  for x in [1..limit]
    selectors["zi#{ x }"] =
      zIndex: "#{ x }"

  selectors
