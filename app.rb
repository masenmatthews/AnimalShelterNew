require('sinatra')
require('sinatra/reloader')
require('./lib/customer')
require('./lib/animal')
also_reload('lib/**/*.rb')
require("pg")

DB = PG.connect({:dbname => "animal_shelter"})

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
  animal_name = params.fetch("animal_name")
  animal_gender = params.fetch("animal_gender")
  animal_type = params.fetch("animal_type")
  animal_id = params.fetch("animal_id").to_i()
  breed = params.fetch("breed")
  admit_date = params.fetch("admit_date")
  id = Animal.find(id)
  @animal = Animal.new({:animal_name => animal_name, :animal_gender => animal_gender, :animal_type => animal_type, :animal_id => animal_id, :admit_date => admit_date, :breed => breed, :id => id})
  @animal.save()
  erb(:confirmation)
 end

 post("/adoptee/success") do
   erb(:confirmation)
 end
