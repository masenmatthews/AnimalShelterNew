require("spec_helper")
require("rspec")
require('pg')
require('pry')
require('customer')


describe(Customer) do
  describe('#==') do
      it('is the same animal if names and ids are the same') do
        one = Customer.new({:customer_name => 'Bob', :phone => '503-687-5309', :animal_preference => 'dog', :breed_preference=> 'poodle', :customer_id  => 47, :id => nil})
        two = Customer.new({:customer_name => 'Bob', :phone => '503-687-5309', :animal_preference => 'dog', :breed_preference=> 'poodle', :customer_id  => 47, :id => nil})
        expect(one).to(eq(two))
      end
    end # ==



end
