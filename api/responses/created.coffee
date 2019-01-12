default_response = { message: 'created' }

module.exports = (data = default_response) ->
  @req._sails.log.silly('res.created() :: sending 201 ("created") response')
  
  if typeof data is 'string' then data =
    message: data

  @res.status 201
  @res.json data
