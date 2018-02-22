class Customer

  attr_reader(:customer_name)
  attr_accessor(:phone, :animal_preference, :breed_preference, :customer_id)

  def initialize(attributes)
    @customer_name = attributes.fetch(:customer_name)
    @phone = attributes.fetch(:phone)
    @animal_preference = attributes.fetch(:animal_preference)
    @breed_preference = attributes.fetch(:breed_preference)
    @customer_id = attributes.fetch(:customer_id)
  end

end
