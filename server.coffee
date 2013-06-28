express = require 'express'
http    = require 'http'

app = express()
app.configure ->
  app.set 'port', process.env.PORT or 3000
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.static("#{__dirname}/public")
  app.set 'view engine', 'jade'

require("#{__dirname}/app/routes") app

http.createServer(app).listen app.get('port'), ->
  console.log "Express server listening on port #{app.get 'port'}"
