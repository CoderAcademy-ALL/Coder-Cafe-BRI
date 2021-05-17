class NotANumber < StandardError
end

class Calculator

  def validate_input(x, y)
    if !x.is_a?(Numeric)
      raise NotANumber, "x is not a number"
    end

    if !y.is_a?(Numeric)
      raise NotANumber, "y is not a number"
    end
  end

  def add(x, y)
    validate_input(x,y)
    return x + y
  end

  def divide(x,y)

    validate_input(x,y)

    # Handle division by zero
    begin
      result = x / y
    rescue => e
      raise ZeroDivisionError, "Divided by Zero"
      puts e.message
      puts e.backtrace.inspect
    return result
    end
  end

  def modulo(x,y)
    validate_input(x,y)

    # Handle division by zero
    begin
      result = x % y
    rescue => e
      raise ZeroDivisionError, "Divided by Zero"
      puts e.message
      puts e.backtrace.inspect
    return result
    end
  end

  def subtract(x,y)
    validate_input(x,y)
    return x - y
  end

  def multiply(x,y)
    validate_input(x,y)
    return x * y
  end

  def exponent(x,y)
    validate_input(x,y)
    return x**y
  end
end