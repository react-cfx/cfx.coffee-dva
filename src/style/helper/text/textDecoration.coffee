import addMediaQueries from '../../utils/addMediaQueries'

##
 # Text Decoration
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default textDecoration = ({
  helpers: {
    textDecoration: {
      responsive
    }
  }
  breakpoints
}) ->

  media = {}

  ##
   # Text Decoration Helpers
   ##
  selectors =
    overline:
      textDecoration: 'overline'
    'line-through':
      textDecoration: 'line-through'
    underline:
      textDecoration: 'underline'
    xtd:
      textDecoration: 'none'

  ##
   # Media Queries
   ##
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }
