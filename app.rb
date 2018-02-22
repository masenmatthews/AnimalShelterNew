require('sinatra')
require('sinatra/reloader')
require('./lib/customer')
require('./lib/animal')
also_reload('lib/**/*.rb')
require("pg")

DB = PG.connect({:dbname => "animal_shelter"})
