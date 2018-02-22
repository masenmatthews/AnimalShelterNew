require("spec_helper")
require("rspec")
require('pg')
require('pry')
require('animal')

describe(Animal) do

  describe('#==') do
      it('is the same animal if names and ids are the same') do
        one = Animal.new({:animal_name => 'Scrappy', :animal_gender => 'female', :animal_type => 'dog', :animal_id => 9, :admit_date => '2018-05-01', :breed => 'mixed', :id => nil})
        two = Animal.new({:animal_name => 'Scrappy', :animal_gender => 'female', :animal_type => 'dog', :animal_id => 9, :admit_date => '2018-05-01', :breed => 'mixed', :id => nil})
        expect(one).to(eq(two))
      end
    end # ==



end
