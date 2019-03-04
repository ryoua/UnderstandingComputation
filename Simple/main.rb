class Main
  Machine.new(
      Add.new(
          Multiply.new(Number.new(1), Number.new(2)),
          Multiply.new(Number.new(3), Number.new(4))
      )
  ).run
end