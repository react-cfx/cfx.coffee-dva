import addMediaQueries from '../../utils/addMediaQueries'

##
 # Line Height
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default lineHeight = ({
  helpers: {
    lineHeight: {
      responsive
      limit
      incrementBy
    }
  }
  breakpoints
}) ->
  media = {}

  ##
   # Line Height Helpers
   ##
  selectors =
    lh1:
      lineHeight: '1'

  for x in [2..limit]
    selectors["lh#{ x }"] =
      lineHeight: "#{ 1 + (x - .1) * incrementBy }"

  ##
   # Media Queries
   #
  if responsive
      media = addMediaQueries selectors, breakpoints

  { selectors..., media... }
