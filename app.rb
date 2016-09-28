require 'pry'

class Person
  attr_accessor :name, :age
  @@all = []
  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  def self.all
    @@all
  end
  def self.count
    @@all.length
  end
  def self.find_older(person1, person2)
    if person1.age > person2.age
      "#{person1.name} is older than #{person2.name}"
    elsif person2.age > person1.age
      "#{person2.name} is older than #{person1.name}"
    elsif person1.age == person.age
      "#{person1.name} and #{person2.name} are the same age"
    else
      "These persons' ages cannot be determined"
    end
  end
  def self.name_starts_with(letter)
    @@all.select { |person| person.name[0].downcase == letter.downcase}
  end
  def introduce
    "Hello! My name is #{@name} and I am #{age} years old."
  end
  def can_vote?
    @age >= 18
  end
end


Andrew = Person.new('Andy', 24)
Sam = Person.new('Sam', 27)
Alec = Person.new('Alec', 33)

binding.pry
