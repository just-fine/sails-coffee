execa = require 'execa'

task 'mongo', 'lift mongodb with docker', ->
  try
    { stdout, stderr } = await execa.shellSync 'docker-compose -f compose.yml up -d'
    console.log stdout if stdout?
    console.log stderr if stderr?
    console.log 'successful database mounting.'
  catch err
    console.log err

task 'start', 'list sails and watch file', ->
  try
    instance = execa 'nodemon', ['app.coffee', '--color']
    log = (s) -> console.log "#{s}"
    instance.stdout.on 'data', log
    instance.stderr.on 'data', log
  catch err
    console.log err

task 'build', 'build coffee script', ->
  try
    await execa.shellSync 'coffee -b -co ./ ./'
    console.log 'done.'
  catch err
    console.log err

task 'clear', 'clear all .js files', ->
  try
    await execa.shellSync 'find .  -type f -path \'./api/*.js\' \
      -o -path \'./config/*.js\' -o -path \'./app.js\' | xargs rm'
    console.log 'done.'
  catch err
    console.log err



