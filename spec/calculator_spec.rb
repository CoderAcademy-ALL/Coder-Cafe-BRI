require_relative '../calculator'

def setup
  before(:each) do
    @calculator = Calculator.new
  end
end
# calculator = Calculator.new

describe "add" do
  setup
  it "should be able to add two positive numbers" do
    expect(@calculator.add(5,6)).to be(11)
  end

  it "should be able to add two negative numbers" do
    expect(@calculator.add(-5,-6)).to be(-11)
  end

  it "should be able to add a positibe and negative number" do
    expect(@calculator.add(-5,6)).to be(1)
  end

  it "should handle input validation" do
    # Could also use ArgumentError
    expect {@calculator.add('4', 2)}.to raise_error(NotANumber)
  end
end

describe "divide" do

  setup

  it "should validate the input" do
    expect{@calculator.divide('4',2)}.to raise_error(NotANumber)
  end
  
  it "should be able to divide two positive numbers" do
    expect(@calculator.divide(4, 2)).to be(2)
  end

  it "should handle divide by zero" do
    expect {@calculator.divide(4,0)}.to raise_error(ZeroDivisionError)
  end

  it "should handle input validation" do
    # Could also use ArgumentError
    expect {@calculator.divide('4', 2)}.to raise_error(NotANumber)
  end
end

describe "modulo" do

  setup

  it "should be able to get the remainder of two positive numbers" do
    expect(@calculator.modulo(10,3)).to be(1)
  end

  it "should handle divide by zero" do
    expect {@calculator.modulo(4,0)}.to raise_error(ZeroDivisionError)
  end

  it "should handle input validation" do
    # Could also use ArgumentError
    expect {@calculator.modulo('4', 2)}.to raise_error(NotANumber)
  end
end

describe "subtract" do

  setup

  it "should be able to subtract two positive numbers" do
    expect(@calculator.subtract(6, 4)).to be(2)
  end

  it "should be able to subtract two negative numbers" do
    expect(@calculator.subtract(-6, -4)).to be(-2)
  end

  it "should be able to subtract a positive number and a negative number" do
    expect(@calculator.subtract(6, -4)).to be(10)
  end

  it "should validate the input" do
    expect{@calculator.subtract("4",2)}.to raise_error(NotANumber)
  end
end

describe "multiply" do

  setup

  it "should be able to multiply two positive numbers" do
    expect(@calculator.multiply(3,4)).to be(12)
  end

  it "should be able to multiply two negative numbers" do
    expect(@calculator.multiply(-3,-4)).to be(12)
  end

  it "should be able to multiply a positive number and a negative number" do
    expect(@calculator.multiply(-3,4)).to be(-12)
  end

  it "should validate the input" do
    expect{@calculator.multiply("4",2)}.to raise_error(NotANumber)
  end
end

describe "exponent" do

  setup

  it "should be able to raise the first argument to the second argument" do
    expect(@calculator.exponent(2,2)).to be(4)
  end

  it "should be able to raise the first argument to zero" do
    expect(@calculator.exponent(2,0)).to be(1)
  end

  it "should validate the input" do
    expect{@calculator.exponent("4",2)}.to raise_error(NotANumber)
  end
end