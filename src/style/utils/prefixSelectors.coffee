import setBeardColors from "./setBeardColors"

##
 # Returns a new object with
 # prefix class selectors with '.'
 # and psuedo selectors with ':'
 # @param  {object} settings
 # @param  {object} helperFns
 # @return {object}
 ##
export default prefixSelectors = (settings, helperFns) ->
  # Set colors
  settings.colors = setBeardColors(settings.colors)

  # Envokes each helper function passed and returns
  # an aggregrated object of all selector properties.
  const allSelectors = Object
  .keys helperFns
  .map (fnKey) =>
    helperFns[fnKey] settings
  .reduce (previous, current) =>
    { previous..., current... }

  # Prefix each selector with .
  Object.keys(allSelectors)
  .reduce((previous, current) => {
    allSelectors[`.${ current }`] = allSelectors[current]

    # Prefix psuedo selectors with :
    Object.keys allSelectors[".#{ current }"]
    .forEach (selector) =>
      if selector[0] is ':'
        allSelectors[".#{ current }"]["&#{ selector }"] =
        allSelectors[current][selector]
        delete allSelectors[".#{ current }"][selector]

    delete allSelectors[current]

    { allSelectors... }
  , {}
