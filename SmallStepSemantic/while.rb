class While < Struct.new(:condition, :body)
  def to_s
    "while (#{condition}) {#{body}}"
  end

  def inspect
    "#{self}"
  end

  def reducible?
    true
  end

  def reduce(environment)
    [If.new(condition, Sequence.new(body, self), DoNothing.new), environment]
  end
end