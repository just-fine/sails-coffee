fs = require 'fs'
path = require 'path'
env = require 'node-env-file'
secrets = env path.join __dirname, '../variables.env'

module.exports.datastores =
  default:
    adapter: 'sails-mongo'
    url: "mongodb://#{secrets.MONGODB_USER}:#{secrets.MONGODB_PASS}@127.0.0.1:27017/#{secrets.MONGODB_DATABASE}"
