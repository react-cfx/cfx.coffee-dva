import setBeardColors from "./setBeardColors"
import dd from 'ddeyes'

##
 # Returns a new object with
 # prefix class selectors with '.'
 # and psuedo selectors with ':'
 # @param  {object} settings
 # @param  {object} helperFns
 # @return {object}
 ##
export getAllSelectorsByGroup = (settings, helperFns) ->
  # Set colors
  settings.colors = setBeardColors(settings.colors)

  # Envokes each helper function passed and returns
  # an aggregrated object of all selector properties.
  allSelectors = Object
  .keys helperFns
  .map (fnKey) =>
    "#{ fnKey }": helperFns[fnKey] settings
    # helperFns[fnKey] settings
  .reduce (previous, current) =>
    { previous..., current... }

  # dd allSelectors

  allSelectors

export getAllSelectors = (allSelectorsGroup) ->

  Object.keys allSelectorsGroup
  .reduce (r, groupName) ->
    {
      r...
      allSelectorsGroup[groupName]...
      _group: {
        r._group...
        "#{groupName}": Object.keys allSelectorsGroup[groupName]
      }
    }
  , {}