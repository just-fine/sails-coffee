fs = require 'fs'
path = require 'path'
child = require 'child_process'


module.exports.bootstrap = ->

#  By convention, this is a good place to set up fake data during development.

#  Set up fake development data (or if we already have some, avast)
#  if (await User.count() > 0) {
#    return;
#  }

#  await User.createEach([
#    { emailAddress: 'ry@example.com', fullName: 'Ryan Dahl', },
#    { emailAddress: 'rachael@example.com', fullName: 'Rachael Shaw', },
#    // etc.
#  ])
