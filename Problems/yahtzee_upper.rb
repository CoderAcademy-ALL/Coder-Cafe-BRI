require 'pry'

# The game of Yahtzee is played by rolling five 6-sided dice, and 
# scoring the results in a number of ways. You are given a Yahtzee 
# dice roll, represented as a sorted list of 5 integers, each of 
# which is between 1 and 6 inclusive. Your task is to find the 
# maximum possible score for this roll in the upper section of 
# the Yahtzee score card. Here's what that means.

# For the purpose of this challenge, the upper section of 
# Yahtzee gives you six possible ways to score a roll. 1 
# times the number of 1's in the roll, 2 times the number of 2's, 
# 3 times the number of 3's, and so on up to 6 times the 
# number of 6's. 
# For instance, consider the roll [2, 3, 5, 5, 6]. If you scored 
# this as 1's, the score would be 0, since there are no 1's in 
# the roll. If you scored it as 2's, the score would be 2, 
# since there's one 2 in the roll. Scoring the roll in each 
# of the six ways gives you the six possible scores:

# 0 2 3 0 10 6
# The maximum here is 10 (2x5), so your result should be 10.

def yahtzee_upper(arr)

    dice = {}
    # dice = { :key => value}

    

    arr.each do | number |
        if dice.include?(number)
            dice[number] += 1
        else
            dice[number] = 1
        end
    end
    
    max_elements = dice.max_by{|dice,points| points}
    answer = max_elements.inject(:*)

    # answer = max_elements[0] * max_elements[1]
    return answer


    # max_elements.inject(:*)
    # binding.pry
    # def largest_hash_key(hash)
    #     hash.max_by{|k,v| v}
    # end

    # letter_count[letter] = input.count(letter)


end


result = yahtzee_upper([2, 3, 5, 5, 6]) # => 10
puts result
result3 = yahtzee_upper([1, 1, 1, 1, 3]) # => 4
puts result3
# yahtzee_upper([1, 1, 1, 3, 3]) # => 6
# yahtzee_upper([1, 2, 3, 4, 5]) # => 5

# result2 = yahtzee_upper([6, 6, 6, 6, 6]) # => 30
# puts result2