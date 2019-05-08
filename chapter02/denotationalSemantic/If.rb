class If < Struct.new(:condition, :consequence, :alternative)
  def to_ruby
    "-> e { if (#{condition.to_ruby}).call(e)" +
        " then (#{consequence.to_ruby}).call(e)" +
        " else (#{alternative.to_ruby}).call(e)" +
        "end }"
  end
end
