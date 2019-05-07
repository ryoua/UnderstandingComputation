class While < Struct.new(:condition, :body)
  def reduce(environment)
    [If.new(condition, Sequence.new(body, self), DoNothing.new), environment]
  end

  def reducible?
    true
  end

  def to_s
    "while (#{condition}) {#{body}}"
  end

  def inspect
    "#{self}"
  end
end
