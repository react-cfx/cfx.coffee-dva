import request from '../utils/request'
import { PAGE_SIZE } from '../constants'

fetch = ({ page }) ->
  request "/api/users?_page=#{page}&_limit=#{PAGE_SIZE}"

remove = (id) ->
  request "/api/users/#{id}"
  ,
    method: 'DELETE'

patch = (id, values) ->
  request "/api/users/#{id}"
  ,
    method: 'PATCH'
    body: JSON.stringify values

create = (values) ->
  request '/api/users'
  ,
    method: 'POST'
    body: JSON.stringify values

export {
  fetch
  remove
  patch
  create
}
