import addMediaQueries from '../../utils/addMediaQueries'

##
 # Floats
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default float = ({
  helpers: {
    float: {
      responsive
    }
  }
  breakpoints
}) ->
  media = {}

  ##
   # Float Helpers
   ##
  selectors =
    fl:
      float: 'left'
    fr:
      float: 'right'
    fn:
      float: 'none'
    finit:
      float: 'initial'
    finhe:
      float: 'inherit'
    
  ##
   # Media Queries
   ##
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }