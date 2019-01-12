default_response = { message: 'server_error' }

module.exports = (data = default_response) ->
  @req._sails.log.silly 'res.server_error() :: sending 500 ("server_error") response'
  
  if typeof data is 'string' then data =
    message: data

  @res.status 500
  @res.json data
