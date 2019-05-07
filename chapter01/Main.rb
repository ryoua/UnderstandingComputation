o = Object.new

def o.add(x, y)
  x + y
end

def o.add_twice(x, y)
  add(x, y) + add(x, y)
end

def multiply(a, b)
  a * b
end

class Calculator
  def divide(x, y)
    x / y
  end
end

class MultiplyingCalculator < Calculator
  def multiply(x, y)
    x * y
  end
end

class BinaryMultiplyingCalculator < MultiplyingCalculator
  def multiply(x, y)
    result = super.multiply(x, y)
    result.to_s(2)
  end
end