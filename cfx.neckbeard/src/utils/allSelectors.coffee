import setBeardColors from "./setBeardColors"
import addMediaQueries from './addMediaQueries'
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
  settings.colors = setBeardColors settings.colors

  # Envokes each helper function passed and returns
  # an aggregrated object of all selector properties.
  allSelectors = Object
  .keys helperFns
  .map (fnKey) =>

    # dd settings.helpers[fnKey]

    selectors = "#{ fnKey }": helperFns[fnKey] {
      settings...
      helpers: settings.helpers[fnKey]
    }

    if settings.helpers[fnKey].responsive
      selectors = Object.keys selectors
      .reduce (result, groupName) ->
        _selectors = selectors["#{ groupName }"]
        {
          result...
          "#{ groupName }": {
            _selectors...
            (addMediaQueries _selectors, settings.breakpoints)...
          }
        }
      , {}

    selectors

  .reduce (previous, current) =>
    { previous..., current... }

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
