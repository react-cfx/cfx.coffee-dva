##
 # Grid
 #
 # @param  {object} breakpoints
 # @param  {object} gridBlockCount - number of columns
 # @param  {object} gridGutter - size of gutter
 # @param  {string} stackAtBreakpoint
 # @param  {object} responsive
 # @return {object}
 ##
export default grid = ({
  gridGutter = 12
  gridBlockCount = 30
}) ->

  # The default column width is 100% divided by the column count
  blockWidth = 100 / gridBlockCount

  # Adds the ability to add grids without padding in their blocks
  # @TODO - Can't do decendant selectors like this in Aphrodite.
  # selectors =
  #   'frame--xpad [class^="blk"]':
  #     paddingLeft: 0
  #     paddingRight: 0
  
  # Blocks
  #########
  selectors =
    blk:
      position: 'relative'
      paddingLeft: "#{ gridGutter }px"
      paddingRight: "#{ gridGutter }px"
      flexGrow: 1
      flexBasis: 0
  
  # Generate standard sizing helpers
  for x in [1..gridBlockCount]
    selectors = {
      selectors...
      "blk#{ x }":
        position: 'relative'
        paddingLeft: "#{ gridGutter }px"
        paddingRight: "#{ gridGutter }px"
        flexBasis: "#{ x * blockWidth }%"
      # Offsets, Pushers, and Pullers
      ################################
      # Offsets
      "blk--offset#{ x }":
        marginLeft: "#{ x * blockWidth }%"
      # Pushers
      "blk--push#{ x }":
        left: "#{ x * blockWidth }%"
      # Pullers
      "blk--pull#{ x }":
        right: "#{ x * blockWidth }%"
    }

  # Reordering Helpers
  #####################
  # Basic first and Last helpers
  selectors = {
    selectors...
    'blk--first':
      order: 0
    'blk--last':
      order: 1
  }

  selectors

  ##
  # Response Flexbox Grid
  ##
  # selectors = {
  #   selectors...
  #   wrap:
  #     marginLeft: 'auto'
  #     marginRight: 'auto'
  #     paddingLeft: "#{ gridGutter }px"
  #     paddingRight: "#{ gridGutter }px"
  #   'wrap--xpad':
  #     paddingLeft: 0
  #     paddingRight: 0
  #   frame:
  #     marginLeft: -gridGutter
  #     marginRight: -gridGutter
  #     "@media (min-width: #{ breakpoints[stackAtBreakpoint] }px)":
  #       display: 'flex'
  #       flexDirection: 'row'
  #       flexWrap: 'wrap'
  #   'frame--stay':
  #     display: 'flex'
  # }