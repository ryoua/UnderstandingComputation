class Sequence < Struct.new(:first, :second)
  def reduce(environment)
    case first
    when DoNothing.new
      [second, environment]
    else
      reduce_first, reduced_environment = first.reduce(environment)
      [Sequence.new(reduce_first, second), reduced_environment]
    end
  end

  def reducible?
    true
  end

  def to_s
    "#{first}; #{second}"
  end

  def inspect
    "#{self}"
  end
end