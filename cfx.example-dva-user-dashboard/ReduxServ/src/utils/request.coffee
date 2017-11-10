import fetch from 'dva/fetch'
import dd from 'ddeyes'

checkStatus = (response) ->
  return response if (
    response.status >= 200 and
    response.status < 300
  )

  error = new Error response.statusText
  error.response = response
  throw error

##
 # Requests a URL, returning a promise.
 #
 # @param  {string} url       The URL we want to request
 # @param  {object} [options] The options we want to pass to "fetch"
 # @return {object}           An object containing either "data" or "err"
 ##
export default request = (url, options) ->
  # response = yield fetch url, options
  response = await fetch url, options
  checkStatus response
  # data = yield response.json()
  data = await response.json()

  ret = {
    data
    headers: {}
  }

  if response.headers.get 'x-total-count'
    ret.headers['x-total-count'] =
      response.headers.get 'x-total-count'

  ret
