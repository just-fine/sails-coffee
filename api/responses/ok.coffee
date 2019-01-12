default_response = { message: 'ok' }

module.exports = (data = default_response) ->
  @req._sails.log.silly 'res.ok() :: sending 200 ("ok") response'
  
  if typeof data is 'string' then data =
    message: data

  @res.status 200
  @res.json data
