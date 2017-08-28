##
 # Text Decoration
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default textDecoration = ->

  ##
   # Text Decoration Helpers
   ##
  overline:
    textDecoration: 'overline'
  'line-through':
    textDecoration: 'line-through'
  underline:
    textDecoration: 'underline'
  xtd:
    textDecoration: 'none'