# inputs - array of numbers 
numbers = [1721, 979, 366, 299, 675, 1456]

# Output - 
# find the two entries that sum to 2020 
# and then multiply those two numbers 
# together.

# You need to locate the numbers in the 
# array.  
# Take each number from 2020 and search 
# for the remainder.

# X + Y = 2020, while X or y can be 
# in array, to find X take 2020-Y and 
# vice versa.

for num_1 in numbers do
  # answer = 2020 - number
  for num_2 in numbers do
    if num_1 + num_2 == 2020
      answer = num_1 * num_2
      puts "#{answer}"
    end
  end
end