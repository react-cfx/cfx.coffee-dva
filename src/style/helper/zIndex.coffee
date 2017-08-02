import addMediaQueries from '../utils/addMediaQueries'

##
 # Z-index
 #
 # @param  {Number} limit=10
 # @param  {object} limit, incrementBy, responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default zindex = ({
  helpers: {
    zIndex: {
      limit
      incrementBy
      responsive
    }
  }
  breakpoints
}) ->
  selectors = {}
  media = {}

  ##
   # z-index
   ##
  for x in [1..limit]
    selectors["zi#{ x }"] =
      zIndex: "#{ x }"

  ##
   # Media Queries
   ##
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }
