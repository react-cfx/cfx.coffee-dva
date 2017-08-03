import addMediaQueries from '../../utils/addMediaQueries'

##
 # Flex
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default flex = ({
  helpers: {
    flex: {
      responsive
    }
  }
  breakpoints
}) ->
  selectors = {}
  media = {}

  ##
   # Flexbox Helpers
   ##
  selectors =
    flex:
      display: 'flex'
    iflex:
      display: 'inline-flex'
    'flex-grow':
      flexGrow: 1

    # Flex Basis Helpers
    fb100:
      flexBasis: '100%'

    # Flex Direction Helpers
    fdr:
      flexDirection: 'row'
    fdrr:
      flexDirection: 'row-reverse'
    fdc:
      flexDirection: 'column'
    fdcr:
      flexDirection: 'column-reverse'

    # Flex Wrap Helpers
    fwn:
      flexWrap: 'nowrap'
    fww:
      flexWrap: 'wrap'
    fwr:
      flexWrap: 'wrap-reverse'

    # Justification Helpers
    jcc:
      justifyContent: 'center'
    jcsb:
      justifyContent: 'space-between'
    jcsa:
      justifyContent: 'space-around'
    jcfs:
      justifyContent: 'flex-start'
    jcfe:
      justifyContent: 'flex-end'

    # Align Items Helpers
    aic:
      alignItems: 'center'
    aifs:
      alignItems: 'flex-start'
    aife:
      alignItems: 'flex-end'
    ais:
      alignItems: 'stretch'
    aib:
      alignItems: 'baseline'

    # Align Content Helpers
    acc:
      alignContent: 'center'
    acfs:
      alignContent: 'flex-start'
    acfe:
      alignContent: 'flex-end'
    acs:
      alignContent: 'stretch'
    acb:
      alignContent: 'baseline'

  ##
   # Media Queries
   ##
  if responsive
    media = addMediaQueries selectors, breakpoints

  { selectors..., media... }