class Drink

  attr_reader :name, :size, :description

  @@no_of_drinks = 0  # class variable

  def initialize(name, size, description)
    @name = name
    @size = size
    @description = description
  end

  def to_s
    return "A #{@name}: #{@description}"
  end

  ## Same as attr_reader
  # def get_name 
  #   return @name
  # end

  ## Same as attr_writer
  # def set_name(name)
  #   @name = name
  # end

  ## Use attr_accessor to read and write
end

# drink = Drink.new("Latte", "small", "milk in coffee")
# puts drink

# puts "Hello".class
# puts 5.class