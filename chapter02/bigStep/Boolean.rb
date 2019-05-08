class Boolean < Struct.new(:value)
  def evaluate(environment)
    self
  end
end