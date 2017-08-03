import addMediaQueries from '../utils/addMediaQueries'

##
 # Position
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default position = ({
  helpers: {
    position: {
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
    relative:
      position: 'relative'
    absolute:
      position: 'absolute'
    fixed:
      position: 'fixed'
    'pin-top':
      top: 0
    'pin-bottom':
      bottom: 0
    'pin-right':
      right: 0
    'pin-left':
      left: 0
    'pin-edges':
      top: 0
      right: 0
      bottom: 0
      left: 0

  ##
   # Media Queries
   ##
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }