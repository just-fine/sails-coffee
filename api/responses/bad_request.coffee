default_response = { message: 'bad_request' }

module.exports = (data = default_response) ->
  @req._sails.log.silly 'res.bad_request() :: sending 400 ("bad_request") response'
  
  if typeof data is 'string' then data =
    message: data

  @res.status 400
  @res.json data
