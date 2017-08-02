import addMediaQueries from '../../utils/addMediaQueries'

##
 # Font Size
 #
 # @param  {object} limit, incrementBy, responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default fontSize = ({
  helpers: {
    fontSize: {
      limit
      incrementBy
      responsive
    }
  }
  breakpoints
}) ->

  media = {}

  ##
   # Font Sizes
   ##
  selectors =
    ft1:
      fontSize: '1rem'

  for x in [2..limit]
    selectors["ft#{ x }"] =
      fontSize: "#{ 1 + (x - 1) * incrementBy }rem"

  ##
   # Media Queries
   ##
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }