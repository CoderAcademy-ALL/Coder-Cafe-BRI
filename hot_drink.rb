require_relative 'drink'

require 'pry'
class HotDrink < Drink

  def initialize(name, size, description, has_milk)
    super(name, size, description)
    @has_milk = has_milk
  end
  
  def to_s
    return "#{@name} that is described as #{@description}. Might have milk: #{@has_milk}"
  end

  def add_milk
    if has_milk
      return "#{@name} already has milk"
    else 
      @has_milk = true
      return "Added milk to #{@name}"
    end
  end

  def make_drink
    @@no_of_drinks += 1
    # return "Your hot drink #{@name} was made in #{brew_time}"
  end

end

  # latte = HotDrink.new("Latte", "small", "Milk in coffee", true)
  
  # binding.pry

  # latte.name.description
  # latte.make_drink # => no_of_drinks = 1
  # latte.make_drink # => no_of_drinks = 2
  # mocha = HotDrink.new("mocha", "small", "chocolate in coffee", true)
  # puts mocha.no_of_drinks # => no_of_drinks = 3
  # # puts latte