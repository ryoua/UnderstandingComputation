class Variable
  def evaluate(environment)
    environment[name]
  end
end