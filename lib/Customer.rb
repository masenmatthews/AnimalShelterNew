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


end
