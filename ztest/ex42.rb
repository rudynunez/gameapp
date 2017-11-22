## Animal is-a object look at extra credit
class Animal
end

## is-a
class Dog < Animal
  
  def initialize(name)
    ## is-a
    @name = name
  end
end


## is-a
class Cat < Animal
  def initialize(name)
    ## is-a
    @name = name
  end
end

## is-a
class Person
  
  def initialize(name)
    ## is-a
    @name = name
    
    ## Person has-a pet of some kind
    @pet = nil
  end
  
  attr_accessor :pet
end

## is-a
class Employee < Person
  
  def initialize(name, salary)
    ## has-a?  super has-a name
    super(name)
    ## salary is-a salary
    @salary = salary
  end
  
end

## is-a
class Fish
end

## is-a
class Salmon < Fish 
end

## is-a
class Halibut < Fish
end


## rover is-a dog
rover = Dog.new("Rover")

## satan is-a cat
satan = Cat.new("Satan")

## Mary is-a person
mary = Person.new("Mary")

## Mary has-a pet who is-a satan
mary.pet = satan

## frank is-a employee
frank  = Employee.new("Frank", 120000)

## frank has-a pet who is-a rover
frank.pet = rover

## flipper is-a new Fish
flipper = Fish.new()

## crouse is-a new Fish
crouse = Salmon.new()

## is-a
harry = Halibut.new()

