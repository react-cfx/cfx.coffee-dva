##
 # Display
 #
 # @param  {object} responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default display = (helpers) ->

  ##
   # Display
   ##
  full =
    display: 'block'
  w100 =
    width: '100%'
  h100 =
    height: '100%'

  {
    w100
    h100
    full: {
      full...
      w100...
    }
    db:
      display: 'block'
    di:
      display: 'inline'
    dib:
      display: 'inline-block'
    dn:
      display: 'none'
    df:
      display: 'flex'
  }
