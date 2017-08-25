##
 # Borders
 #
 # @param  {Number} limit=10
 # @param  {object} limit, incrementBy, responsive
 # @param  {object} breakpoints={} (optional)
 # @return {object}
 ##
export default border = ({
  limit = 3
  incrementBy = 1
}) ->

  ##
   # Borders
   ##
  selectors =
    xbrdr:
      border: 'none'

  selectorOrStyle = (option, flag) ->
    switch option
      when 'selector'
      then(
        if flag is ''
        then flag
        else "--#{flag}"
      )
      when 'style'
      then(
        if flag is ''
        then flag
        else "#{flag[0].toUpperCase()}#{flag[1..]}"
      )
      else flag

  for x in [1..limit]

    for flag in [
      ''
      'top'
      'right'
      'bottom'
      'left'
    ]

      selectors["brdr#{ x }#{ selectorOrStyle 'selector', flag }"] =
        "border#{ selectorOrStyle 'style', flag }Style": 'solid'
        "border#{ selectorOrStyle 'style', flag }Width": "#{ x }px"

  selectors
