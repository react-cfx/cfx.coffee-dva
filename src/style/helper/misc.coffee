import addMediaQueries from '../utils/addMediaQueries'

##
 # Misc
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default misc = ({
  helpers: {
    misc: {
      responsive
      siteWidth
    }
  }
  breakpoints
}) ->
  media = {}

  ##
   # Text Alignment Helpers
   ##
  selectors = 
    center:
      marginLeft: 'auto'
      marginRight: 'auto'
    'default-hover':
      ':hover':
        opacity: 0.5
    'default-active':
      ':active':
        opacity: 0.8
    dim:
      ':hover':
        opacity: 0.5
      ':active':
        opacity: 0.8
    'site-width':
      maxWidth: siteWidth
    lowercase:
      textTransform: 'lowercase'
    uppercase:
      textTransform: 'uppercase'
    ell:
      overflow: 'hidden'
      textOverflow: 'ellipsis'
      whiteSpace: 'nowrap'
    imax:
      maxWidth: '100%'
      width: 'auto'
      height: 'auto'
    i100:
      width: '100%'
    bgcover:
      backgroundSize: 'cover'
    bgcenter:
      backgroundPosition: '50%'
    vam:
      verticalAlign: 'middle'
    clearfix:
      ':after':
        content: '""'
        display: 'table'
        clear: 'both'
    hidetext:
      textIndent: '100%'
      whiteSpace: 'nowrap'
      overflow: 'hidden'
    pointer:
      cursor: "pointer"

  ##
   # Media Queries
   #
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }
