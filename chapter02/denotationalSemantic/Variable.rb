class Variable < Struct.new(:name)
  def to_ruby
    "-> e { e[#{name.inspect}] }"
  end
end
