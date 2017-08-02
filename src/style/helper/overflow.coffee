import addMediaQueries from '../utils/addMediaQueries'

##
 # Overflow
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default overflow = ({
  helpers: {
    overflow: {
      responsive
    }
  }
  breakpoints
}) ->
  media = {}

  ##
   # Text Alignment Helpers
   ##
  selectors =
    ofh:
      overflow: 'hidden'
    ofx:
      overflowX: 'scroll'
    ofy:
      verflowY: 'scroll'

  ##
   # Media Queries
   #
  if responsive
      media = addMediaQueries selectors, breakpoints

  { selectors..., media... }
