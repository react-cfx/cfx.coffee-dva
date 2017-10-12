import {
  # createClass
  createElement
  # createFactory
  # PropTypes
} from 'react'

cfxify = (e) ->
  (args...) -> createElement.apply @
  , [ e ].concat args

export {
  cfxify
}
