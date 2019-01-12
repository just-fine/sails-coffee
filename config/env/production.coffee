
module.exports =
  models:
    migrate: 'safe'

  blueprints:
    shortcuts: false,

  session:
    cookie:
      maxAge: 24 * 60 * 60 * 1000
#    adapter: '@sailshq/connect-redis'
#    url: 'redis://user:password@localhost:6379/databasenumber'

  log:
    level: 'debug'

  http:
    cache: 365.25 * 24 * 60 * 60 * 1000
    port: 1337
    ssl: undefined
