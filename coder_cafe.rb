prices = {small: 7.99, medium: 15, large: 45}

puts 'What can I get you today?'

hot_drink = gets.strip

puts "And, what size did you want your #{hot_drink}?"

drink_size = gets.strip

# string interpolation
puts "How many #{drink_size} #{hot_drink}s did you want?"
# string concatenation
# puts "How many "+ drink_size + " " + hot_drink + " did you want?"

quantity = gets.strip.to_i

# if statement
# if drink_size == "small"
#   price = prices[:small]
# elsif drink_size == "medium"
#   price = prices[:medium]
# else
#   price = prices[:large]
# end

# case statement
case drink_size
when "small"
  price = prices[:small]
when "medium"
  price = prices[:medium]
when "large"
  price = prices[:large]
end

hot_drink_price = price * quantity

#output so that was 17 medium mochas? 
puts "So, that was #{quantity} #{drink_size} #{hot_drink} for a total of #{hot_drink_price}"
