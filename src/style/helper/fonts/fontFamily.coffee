##
 # Font Family
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default fontFamily = (helpers, { fonts }) ->
      
  ##
   # Font Family Helpers
   ##
  sans:
    fontFamily: fonts.sans
  serif:
    fontFamily: fonts.serif
  code:
    fontFamily: fonts.code
