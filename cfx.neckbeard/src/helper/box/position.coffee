##
 # Position
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default position = ->

  ##
   # Text Alignment Helpers
   ##
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
