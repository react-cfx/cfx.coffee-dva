##
 # Misc
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default misc = (helpers) ->

  def_helpers =
    misc:
      siteWidth: '114rem'

  helpers =
    if helpers
    then {
      def_helpers...
      helpers...
    }
    else def_helpers

  {
    siteWidth
  } = helpers.misc

  ##
   # Text Alignment Helpers
   ##
  selectors = 
    center:
      marginLeft: 'auto'
      marginRight: 'auto'
    defaultHover:
      ':hover':
        opacity: 0.5
    defaultActive:
      ':active':
        opacity: 0.8
    dim:
      ':hover':
        opacity: 0.5
      ':active':
        opacity: 0.8
    siteWidth:
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

  selectors
