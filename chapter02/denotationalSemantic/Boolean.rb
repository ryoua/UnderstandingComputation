class Boolean < Struct.new(:value)
  def to_ruby
    "-> e { #{value.inspect} }"
  end
end
