##
 # Neckbeard Imported Helpers
 ##
import * as helpers from './helper'
import {
  getAllSelectorsByGroup
  getAllSelectors
} from './utils/allSelectors'

import defaultSettings from './config'

##
 # Returns an object of combined
 # helpers ran through Aphrodite.
 # @param  {object} settings
 # @param  {object} helperFns
 # @return {object}
 ##
export default (cfxStyle) ->

  settings: defaultSettings
  create: ({
    settings = defaultSettings
    helperFns = helpers
    useGlamor = true
  }) ->
    # Invokes each helper function passed and returns
    # an aggregrated object of all selector properties.
    allSelectorsGroup = getAllSelectorsByGroup settings, helperFns
    allSelectors = getAllSelectors allSelectorsGroup

    cfxStyle allSelectors
    , {
      useGlamor
    }
