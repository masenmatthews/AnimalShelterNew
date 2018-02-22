class Animal

  attr_reader(:animal_name, :animal_gender, :animal_type, :admit_date, :breed)
  attr_accessor(:animal_id)

  def initialize(attributes)
    @animal_name = attributes.fetch(:animal_name)
    @animal_gender = attributes.fetch(:animal_gender)
    @animal_type = attributes.fetch(:animal_type)
    @animal_id = attributes.fetch(:animal_id)
    @admit_date = attributes.fetch(:admit_date)
    @breed = attributes.fetch(:breed)
  end

end
