
module.exports = () ->
  @req._sails.log.silly 'res.no_content() :: sending 204 ("no_content") response'
  
  @res.status 204
  @res.json {}
