class Sequence
  def evaluate(environment)
    second.evaluate(first.evaluate(environment))
  end
end