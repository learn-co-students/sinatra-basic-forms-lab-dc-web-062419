class Puppy
    attr_accessor :name, :breed, :age
    def initialize(name: name, breed: breed, age: age)
        @name = name 
        @breed = breed
        @age = age
    end
end