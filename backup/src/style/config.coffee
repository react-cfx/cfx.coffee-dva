import setBeardColors from './utils/setBeardColors'

##
 # Neckbeard Default Settings
 # @type {object}
 ##
export default defaultSettings = 

  breakpoints: 
    sm: 300
    md: 600
    lg: 900
    xlg: 1440

  colors: setBeardColors()

  fonts:
    sans: "Helvetica Neue, Helvetica, Arial, sans-serif"
    serif: "Merriweather, Georgia, serif"
    code: "Consolas, Monaco, 'Andale Mono', monospace"

  helpers:

    flex:
      responsive: true

    grid:
      gridBlockCount: 12
      gridGutter: 30
      stackAtBreakpoint: 'md'
      responsive: true

    display:
      responsive: true

    position:
      responsive: true

    spacing:
      limit: 10
      incrementBy: 1
      responsive: true

    float:
      responsive: true

    overflow:
      responsive: false

    border:
      limit: 3
      incrementBy: 1
      responsive: true

    borderRadius:
      limit: 10
      incrementBy: 1
      responsive: true

    zIndex:
      limit: 10
      incrementBy: 1
      responsive: true

    fontFamily:
      responsive: false

    fontSize:
      limit: 17
      incrementBy: .1
      responsive: true

    fontWeight:
      responsive: false

    textAlignment:
      responsive: true

    textDecoration:
      responsive: false

    letterSpacing:
      limit: 10
      incrementBy: .1
      responsive: true

    lineHeight:
      limit: 10
      incrementBy: .1
      responsive: true

    colors:
      responsive: false

    misc:
      responsive: false
      siteWidth: "114rem"

    
