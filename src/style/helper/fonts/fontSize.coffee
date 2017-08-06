##
 # Font Size
 #
 # @param  {object} limit, incrementBy, responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default fontSize = ({
  limit = 17
  incrementBy = .1
}) ->
  ##
   # Font Sizes
   ##
  selectors =
    ft1:
      fontSize: '1rem'

  for x in [2..limit]
    selectors["ft#{ x }"] =
      fontSize: "#{ 1 + (x - 1) * incrementBy }rem"

  selectors