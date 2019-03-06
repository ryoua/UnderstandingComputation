class Variable
  def to_ruby
    "-> e { e[#{name.inspect}] }"
  end
end