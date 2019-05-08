class Sequence < Struct.new(:first, :second)
  def evaluate(environment)
    second.evaluate(first.evaluate(environment))
  end
end
