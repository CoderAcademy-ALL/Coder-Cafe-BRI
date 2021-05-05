names = %w(Nands Teej Ash BenA Arm EthanB Alastair Natalie Isaac Natalia Alverez EthanC BenF Jack Hannah Russell Johnny Walter Benni Edson EthanT Matt Yoko)
puts names.length

puts ""
# Want randomised catchups

# Input: Collection of names as an array
# Output: Pair of names.  If odd number of names, add to either first or last group.

# Iterate through names array
# Pick random person from list.  
# Pick second random person from list making sure that it's not the first person already picked.
# Pair names up.  

# if number of names is odd, add to last group.

# for name in names
#   names.sample(2)
# end

names_cpy = names.clone  # Make a copy of the names array.  

# for loop attempt below
# for name in names_cpy
#   answer = names_cpy.sample(2)
#   names_cpy = names_cpy - answer
  
#   puts "#{answer}"
#   # puts "#{new_arr}"
# end

while !names_cpy.empty? # Check if names array is not empty.  If not empty, do code in loop

  # Check if the length of names copy array is odd 
  if names_cpy.length.odd?   
    # If length of names copy array is odd, pick three random names.
    answer = names_cpy.sample(3)
    # Remove the picked names from the copy of names array.
    names_cpy = names_cpy - answer

  # If length of names copy array is even
  else 
    # Pick two random names
    answer = names_cpy.sample(2)
    # Remove the picked names from the copy of names array.
    names_cpy = names_cpy - answer
  end
  
  # Output the pairs of names.
  puts "#{answer}"
  # puts "#{names_cpy}"
  puts ""
end

# while names_cpy.length > 0

# end

# Nice to haves:
# Pick random days for people.  
# Match available times of people.  