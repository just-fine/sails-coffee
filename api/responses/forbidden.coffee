default_response = { message: 'forbidden' }

module.exports = (data = default_response) ->
  @req._sails.log.silly('res.forbidden() :: sending 403 ("forbidden") response')
  
  if typeof data is 'string' then data =
    message: data

  @res.status 403
  @res.json data
