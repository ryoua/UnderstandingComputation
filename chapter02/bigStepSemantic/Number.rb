class Number < Struct.new(:value)
  def evaluate(environment)
    self
  end
end