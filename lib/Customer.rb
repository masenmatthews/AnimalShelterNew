class Customer

  attr_reader(:customer_name, :id)
  attr_accessor(:phone, :animal_preference, :breed_preference, :customer_id)

  def initialize(attributes)
    @customer_name = attributes.fetch(:customer_name)
    @phone = attributes.fetch(:phone)
    @animal_preference = attributes.fetch(:animal_preference)
    @breed_preference = attributes.fetch(:breed_preference)
    @customer_id = attributes.fetch(:customer_id)
    @id = attributes.fetch(:id)
  end

  def ==(another)
     self.customer_name().==(another.customer_name()).&(self.id().==(another.id())).&(self.phone().==(another.phone())).&(self.animal_preference().==(another.animal_preference())).&(self.breed_preference().==(another.breed_preference())).&(self.customer_id().==(another.customer_id()))
  end

  def self.all
    returned_customers = DB.exec("SELECT * FROM customers;")
    customers = []
    returned_customers.each() do |item|
      customer_name = item.fetch("customer_name")
      phone = item.fetch("phone")
      animal_preference = item.fetch("animal_preference")
      breed_preference = item.fetch("breed_preference")
      customer_id = item.fetch("customer_id")
      id = item.fetch("id")
      customers.push(Customer.new({:customer_name => customer_name, :phone => phone, :animal_preference => animal_preference, :breed_preference => breed_preference, :customer_id => customer_id, :id => id}))
    end
  end

  def save
    result = DB.exec("INSERT INTO customers (customer_name, phone, animal_preference, breed_preference, customer_id) VALUES ('#{@customer_name}', '#{@phone}', '#{@animal_preference}', '#{@breed_preference}', '#{@customer_id}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end
end
