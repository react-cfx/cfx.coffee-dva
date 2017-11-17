
render = (
  CFX
  {
    list
    total
    current
  }
) ->
  { c_Users } = CFX
  c_Users {
    list
    total
    current
  }

getState = (state) ->
  {
    list
    total
    page
  } = state
  {
    list
    total
    page
  }

export {
  render
  getState
}
