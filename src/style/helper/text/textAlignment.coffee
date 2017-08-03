import addMediaQueries from '../../utils/addMediaQueries'

##
 # Text Alignment
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default textAlignment = ({
  helpers: {
    textAlignment: {
      responsive
    }
  }
  breakpoints
}) ->

  media = {}

  ##
   # Text Alignment Helpers
   #
  selectors =
    tal:
      textAlign: 'left'
    tac:
      textAlign: 'center'
    tar:
      textAlign: 'right'

  ##
   # Media Queries
   ##
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }
