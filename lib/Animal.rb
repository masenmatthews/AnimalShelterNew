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

   def self.all
     returned_animals = DB.exec("SELECT * FROM animals;")
     animals = []
     returned_animals.each() do |item|
       animal_name = item.fetch("animal_name")
       animal_gender = item.fetch("animal_gender")
       animal_type = item.fetch("animal_type")
       animal_id = item.fetch("animal_id")
       admit_date = item.fetch("admit_date")
       breed = item.fetch("breed")
       id = item.fetch("id")
       animals.push(Animal.new({:animal_name => animal_name, :animal_gender => animal_gender, :animal_type => animal_type, :animal_id => animal_id, :admit_date => admit_date, :breed => breed, :id => id}))
     end
     return animals
   end

   def save
     DB.exec("INSERT INTO animals (animal_name, animal_gender, animal_type, animal_id, admit_date, breed) VALUES ('#{@animal_name}', '#{@animal_gender}', '#{@animal_type}', '#{@animal_id}', '#{@admit_date}', '#{@breed}') RETURNING id;")
   end
end
