{ to } = require 'await-to-js'

module.exports =
  create: (req, res) ->
    { book } = do req.allParams

    return res.bad_request 'book name is required' if not book?.name
    [err, created] = await to books_service.create_book book
    return res.server_error String err if err?
    res.ok created
