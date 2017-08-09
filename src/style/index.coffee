import * as aphrodite from 'glamor/aphrodite'
import { css } from 'glamor'
import dd from 'ddeyes'

##
 # Neckbeard Imported Helpers
 ##
import * as helpers from './helper'
import defaultSettings from './config'
import {
  getAllSelectorsByGroup
  getAllSelectors
} from './utils/allSelectors'

##
 # Returns an object of combined
 # helpers ran through Aphrodite.
 # @param  {object} settings
 # @param  {object} helperFns
 # @return {object}
 ##
export create = ({
  settings = defaultSettings
  helperFns = helpers
  useGlamor = true
}) ->
  # Invokes each helper function passed and returns
  # an aggregrated object of all selector properties.
  allSelectorsGroup = getAllSelectorsByGroup defaultSettings, helpers
  allSelectors = getAllSelectors allSelectorsGroup

  # Takes a string of selector names or
  # an array of objects selectors and
  # returns a function.
  self = (selectors) =>
    stylesObj = {}

    if typeof selectors is 'string'
      selectors = selectors.split ' '

    if Array.isArray selectors
      selectors = selectors
      .reduce (previous, current) =>

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

    if useGlamor

      css (
        Object.keys stylesObj
        .reduce (r, c) =>
          {
            r...
            stylesObj[c]...
          }
        , {}
      )

    else

      stylesArray = Object
      .keys aphrodite.StyleSheet.create stylesObj
      .map (key) => stylesObj[key]
    
      aphrodite.css { stylesArray... }

  # Add allSelectors to our
  # function as properties
  for selector in allSelectors
    self[selector] = allSelectors[selector]

  self