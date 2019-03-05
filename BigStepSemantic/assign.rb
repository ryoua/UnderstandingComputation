class Assign
  def evaluate(environment)
    environment.merge({name => expression.evaluate(environment)})
  end
end