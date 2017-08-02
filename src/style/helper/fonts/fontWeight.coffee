import addMediaQueries from '../../utils/addMediaQueries'

##
 # Font Weight
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default fontWeight = ({
  helpers: {
    fontWeight: {
      responsive
     }
  }
  breakpoints
}) ->
  selectors = {}
  media = {}

  ##
   # Font Weight Helpers
   ##
  for i in [1..9]
    selectors["fw#{ i }"] =
      fontWeight: "#{ i }00"

  for k, v of [
    'thin'
    'xlight'
    'light'
    'normal'
    'medium'
    'semibold'
    'bold'
    'xbold'
    'black'
  ]
    selectors["fw#{ v }"] =
      fontWeight: "#{ k }00"

  ##
   # Media Queries
   ##
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }