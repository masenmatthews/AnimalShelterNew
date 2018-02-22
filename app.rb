require('sinatra')
require('sinatra/reloader')
require('./lib/customer')
require('./lib/animal')
also_reload('lib/**/*.rb')
require("pg")

get("/") do
  erb(:homepage)
end

get("/staff") do
  erb(:staff)
end

get("/adoptee") do
  erb(:adoptee)
end

post("/staff/success") do
  erb(:confirmation)
 end

 post("/adoptee/success") do
   erb(:confirmation)
 end
