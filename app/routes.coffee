_ = require 'underscore'

# If I ever req more than one file in a path, this will come in handy
include = (res) ->
  includes = {}
  includes[name] = require "#{__dirname}/#{name}" for name in _(arguments).toArray()
  res.locals includes

module.exports = (app) ->
  paths =
    get:
      '/': (req, res, next) ->
        res.locals jobs: require "#{__dirname}/jobs"
        res.render 'index'
      '/projects': (req, res, next) ->
        res.locals projects: require "#{__dirname}/projects"
        res.render 'projects'

  for method, routes of paths
    for path, action of routes
      app[method] path, action
