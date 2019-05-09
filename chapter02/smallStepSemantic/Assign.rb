class Assign < Struct.new(:name, :expression)
  def reduce(environment)
    if expression.reducible?
      [Assign.new(name, expression.reduce(environment)), environment]
    else
      [DoNothing.new, environment.merge({name => expression})]
    end
  end

  def reducible?
    true
  end

  def to_s
    "#{name} = #{expression}"
  end

  def inspect
    "#{self}"
  end
end