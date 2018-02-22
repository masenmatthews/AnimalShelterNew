require ('rspec')
require ('pg')
require ('Animal')
require ('customer')

DB = PG.connect({:dbname => 'animal_shelter'})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM customers *;")
    DB.exec("DELETE FROM animal *;")
  end
end
