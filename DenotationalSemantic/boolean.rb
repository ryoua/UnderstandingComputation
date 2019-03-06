class Boolean
  def to_ruby
    "-> e { #{value.inspect} }"
  end
end