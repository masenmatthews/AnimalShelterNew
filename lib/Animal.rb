class Animal

  attr_reader(:animal_name, :animal_gender, :animal_type, :admit_date, :breed, :id)
  attr_accessor(:animal_id)

  def initialize(attributes)
    @animal_name = attributes.fetch(:animal_name)
    @animal_gender = attributes.fetch(:animal_gender)
    @animal_type = attributes.fetch(:animal_type)
    @animal_id = attributes.fetch(:animal_id)
    @admit_date = attributes.fetch(:admit_date)
    @breed = attributes.fetch(:breed)
    @id = attributes.fetch(:id)
  end

  def ==(another)
     self.animal_name().==(another.animal_name()).&(self.animal_gender().==(another.animal_gender())).&(self.animal_type().==(another.animal_type())).&(self.animal_id().==(another.animal_id())).&(self.admit_date().==(another.admit_date())).&(self.breed().==(another.breed())).&(self.id().==(another.id()))
   end



end
