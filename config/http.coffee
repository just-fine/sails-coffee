
module.exports.http =
  middleware:
    order: [
      'cookieParser'
#      'session'
      'bodyParser'
      'compress'
      'poweredBy'
      'request_logger'
      'api_limit'
      'router'
#      'www'
#      'favicon'
    ]

    request_logger: (req, res, next) ->
      console.log 'Requested :: ', req.method, req.url
      next()
  
    api_limit: (req, res ,next) ->
      return next() if /\/apis\//.test req.path
      res.json message: 'not_found'
  
