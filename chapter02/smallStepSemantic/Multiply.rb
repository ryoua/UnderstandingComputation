class Multiply < Struct.new(:left, :right)
  def reduce(environment)
    if left.reducible?
      Multiply.new(left.reduce(environment), right)
    elsif right.reducible?
      Multiply.new(right, left.reduce(environment))
    else
      Number.new(left.value * right.value)
    end
  end

  def reducible?
    true
  end

  def to_s
    "#{left} * #{right}"
  end

  def inspect
    "#{self}"
  end
end
