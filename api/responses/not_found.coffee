default_response = { message: 'not_found' }

module.exports = (data = default_response) ->
  @req._sails.log.silly('res.not_found() :: sending 404 ("not_found") response')
  
  if typeof data is 'string' then data =
    message: data

  @res.status 404
  @res.json data
