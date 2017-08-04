
##
 # Line Height
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default lineHeight = (helpers) ->

  def_helpers =
    lineHeight:
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
  } = helpers.lineHeight

  ##
   # Line Height Helpers
   ##
  selectors =
    lh1:
      lineHeight: '1'

  for x in [2..limit]
    selectors["lh#{ x }"] =
      lineHeight: "#{ 1 + (x - .1) * incrementBy }"

  selectors
