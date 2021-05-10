require_relative 'drink'

class HotDrink < Drink

  def initialize(name, description, has_milk)
    super(name, description)
    @has_milk = has_milk
  end
  
  def to_s
    return "#{@name} that is described as #{@description}. Might have milk: #{has_milk}"
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
    return "Your hot drink #{@name} was made in #{brew_time}"
  end

end

# latte = HotDrink.new("Latte", "Milk in coffee", true)
# puts latte