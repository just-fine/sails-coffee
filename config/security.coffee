
module.exports.security =
  cors:
    allRoutes: true
    allowOrigins: '*'
#    allowCredentials: true
    allowRequestMethods: 'GET, POST, PUT, PATCH, DELETE, OPTIONS, HEAD'
    allowResponseHeaders: 'content-type, authorization, Access-Control-Allow-Headers, Access-Control-Allow-Origin, Authorization, X-Requested-With'

#  csrf: false
