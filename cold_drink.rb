require_relative 'drink'

class ColdDrink < Drink

  def initialize(name, description, has_ice)
    super(name, description)
    @has_ice = has_ice
  end

  def add_ice
    if has_ice
      return "#{@name} already has ice"
    else 
      has_ice = true
      return "Added ice to #{@name}"
    end
  end

  def make_drink
    return @@no_of_drinks += 1
  end

  def to_s
    return "Name: #{@name}.  Description: #{@description}"
  end

end

# orange_juice = ColdDrink.new("Orange Juice", "Juiced Orange", true)
# puts orange_juice.to_s