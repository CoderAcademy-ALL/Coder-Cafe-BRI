require_relative '../calculator'
require 'matrix'

class MatrixCalculator

  # add the elements in the array
  def add(matrix1, matrix2)
    return matrix1 + matrix2
  end

  def add_2(arr1, arr2)
    arr = []
    count = 0

    while count < arr1.length
      # Could also use our calculator add method
      arr << arr1[count] + arr2[count]
      count += 1
    end
    
    return arr

  end

  def subtract(matrix1, matrix2)
    return matrix1 - matrix2
  end

  def multiply_2(arr1, arr2)
    return arr1.zip(arr2).map{|x,y| x*y}.reduce{|sum, num| sum + num}
  end

end

# a = Matrix[[2,3],[4,5]]
# b = Matrix[[1,2],[3,4]]

# m = MatrixCalculator.new

# puts m.add(a,b)

