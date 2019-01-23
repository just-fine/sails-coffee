
module.exports.http =
  middleware:
    order: [
      'cookieParser'
#      'session'
      'bodyParser'
      'compress'
      'poweredBy'
      'request_logger'
      'router'
#      'www'
#      'favicon'
    ]

    request_logger: (req, res, next) ->
      console.log 'Requested :: ', req.method, req.url
      next()
