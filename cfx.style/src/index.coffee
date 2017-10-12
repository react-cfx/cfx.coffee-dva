import * as aphrodite from 'glamor/aphrodite'
import * as glamor from 'glamor'
import assign from 'assign-deep'

styl = (
  allSelectors
  {
    useGlamor = true
  }
) ->

  # Takes a string of selector names or
  # an array of objects selectors and
  # returns a function.
  self = (selectors, debug = false) =>
    stylesObj = {}

    if typeof selectors is 'string'
      selectors = selectors.split ' '

    # dd { selectors }

    if Array.isArray selectors
      selectors = selectors
      .reduce (previous, current) =>

        # dd {
        #   previous
        #   current
        # }

        if allSelectors.hasOwnProperty current
        then {
          previous...
          "#{current}": allSelectors[current]
        }
        else { previous... }

      , {}

      # Run our object through Aphrodite
      stylesObj = selectors
    else
      stylesObj =
        styles: selectors

    # dd { selectors }

    if useGlamor

      mergedSelectors =
        Object.keys stylesObj
        .reduce (r, c) =>
          assign r, stylesObj[c]
          # {
          #   r...
          #   stylesObj[c]...
          # }
        , {}

      if debug
      then {
        preMerge: stylesObj
        merged: mergedSelectors
      }
      else glamor.css mergedSelectors

    else

      stylesArray = Object
      .keys aphrodite.StyleSheet.create stylesObj
      .map (key) => stylesObj[key]

      if debug
      then stylesObj
      else aphrodite.css { stylesArray... }

  # Add allSelectors to our
  # function as properties
  for k, v of allSelectors
    self[k] = allSelectors[k]

  self

export {
  glamor
  aphrodite
  styl
}

export default styl
