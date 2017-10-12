##
 # Font Family
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default fontFamily = ({
  fonts
}) ->

  ##
   # Font Family Helpers
   ##
  sans:
    fontFamily: fonts.sans
  serif:
    fontFamily: fonts.serif
  code:
    fontFamily: fonts.code
