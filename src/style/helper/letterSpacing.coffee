import addMediaQueries from '../utils/addMediaQueries'

##
 # Letter Spacing
 #
 # @param  {object} limit, incrementBy, responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default letterSpacing = ({
  helpers: {
    letterSpacing: {
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
   # Letter Spacing
   ##
  for x in [1..limit]
    selectors["ls#{ x }"] =
      letterSpacing: "#{ x * incrementBy }rem"

  ##
   # Media Queries
   #
  if responsive
      media = addMediaQueries selectors, breakpoints

  { selectors..., media... }
