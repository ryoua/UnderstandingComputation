class DoNothing
  def ==(other_statement)
    other_statement.instance_of?(DoNothing)
  end

  def reducible?
    false
  end

  def to_s
    'do-nothing'
  end

  def inspect
    "#{self}"
  end
end