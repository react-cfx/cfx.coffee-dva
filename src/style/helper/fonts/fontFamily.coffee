import addMediaQueries from '../../utils/addMediaQueries'

##
 # Font Family
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default fontFamily = ({
  helpers: {
    fontFamily: {
      responsive
    }
  }
  fonts
  breakpoints
}) ->
      
  media = {}

  ##
   # Font Family Helpers
   ##
  selectors =
    sans:
      fontFamily: fonts.sans
    serif:
      fontFamily: fonts.serif
    code:
      fontFamily: fonts.code


  ##
   # Media Queries
   ##
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }