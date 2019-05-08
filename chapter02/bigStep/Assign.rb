class Assign < Struct.new(:name, :expression)
  def evaluate(environment)
    environment.merge({name => expression.evaluate(environment)})
  end
end
