import request from '../utils/request'
import { PAGE_SIZE } from '../constants'

export default (default_host = '') ->

  fetch: ({ page }) ->
    request "#{default_host}/users?_page=#{page}&_limit=#{PAGE_SIZE}"

  remove: (id) ->
    request "#{default_host}/users/#{id}"
    ,
      method: 'DELETE'

  patch: (id, values) ->
    request "#{default_host}/users/#{id}"
    ,
      method: 'PATCH'
      body: JSON.stringify values

  create: (values) ->
    request "#{default_host}/users"
    ,
      method: 'POST'
      body: JSON.stringify values
