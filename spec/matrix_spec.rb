require_relative '../Problems/matrix.rb'
require 'matrix'

def setup
  before(:each) do
    @matrix_calc = MatrixCalculator.new
  end
end

describe 'add' do

  setup

  it "should add two matrices" do
    a = Matrix[[2,3],[4,5]]
    b = Matrix[[1,2],[3,4]]
    expect(@matrix_calc.add(a, b)).to eq(Matrix[[3,5], [7,9]])
  end

  it "should add two matrices without using the Matrix class" do
    a = [2,3,4,5]
    b = [1,2,3,4]
    expect(@matrix_calc.add_2(a,b)).to eq([3,5,7,9])
  end
end

describe "subtract" do

  setup

  it "should subtract two matrices" do
    a = Matrix[[2,3],[4,5]]
    b = Matrix[[1,2],[3,4]]
    expect(@matrix_calc.subtract(a, b)).to eq(Matrix[[1,1], [1,1]])
  end
end

describe "matrix multiplication" do
  setup
  # A
  # [1 2]
  # [3 4]

  # B
  # [1]
  # [2]

  # A * B
  # [1*1 + 2*2]
  # [3*1 + 4*2]

  # A * B
  # [1 4]
  # [3 8]

  it "should multiply two matrices without the matrix class" do
    expect(@matrix_calc.multiply_2([1,2,3,4], [1,2,3,4])).to eq([1,2,3,16])
  end
end