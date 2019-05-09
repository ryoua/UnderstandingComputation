class Variable < Struct.new(:name)
  def evaluate(environment)
    environment[name]
  end
end
