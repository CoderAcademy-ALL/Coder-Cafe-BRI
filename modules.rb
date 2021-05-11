module Swimmable
  def swim
    puts "I'm swimming!"
  end
end
  
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hi! My name is #{name}"
  end
end
  
# mixing in Swimmable module
class Fish < Animal
  include Swimmable
end

# most cats hate swimming!
class Cat < Animal
end

# mixing in Swimmable module
class Dog < Animal
  include Swimmable
end
  
  
fred_fish = Fish.new('Fred')
fred_fish.greet
fred_fish.swim

crewshanks = Cat.new('crewshanks')
crewshanks.greet
# crewshanks.swim # NoMethodError thrown