import dd from 'ddeyes'
import getService from 'cfx.service'
PAGE_SIZE = 3

urlConf =
  host: [
    # 'cors-anywhere.herokuapp.com/'
    # 'http://'
    'jsonplaceholder.typicode.com'
  ].join ''

business =

  users:

    fetch: ({
      request
      baseUrl
    }) => ({
      page
    }) =>
      request "#{baseUrl}/users?_page=#{page}&_limit=#{PAGE_SIZE}"
      ,
        method: 'GET'

    remove: ({
      request
      baseUrl
    }) => ({
      id
    }) =>
      request "#{baseUrl}/users/#{id}"
      ,
        method: 'DELETE'

    patch: ({
      request
      baseUrl
    }) => ({
      id
      data
    }) =>
      request "#{baseUrl}/users/#{id}"
      ,
        method: 'PATCH'
        data: JSON.stringify data

    create: ({
      request
      baseUrl
    }) => ({
      data
    }) =>
      request "#{baseUrl}/users"
      ,
        method: 'POST'
        data: JSON.stringify data

export default getService {
  urlConf
  business
}
