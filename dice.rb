class Dice

  attr_reader(:sides, :result)

  def initialize
    @sides = 6
    @result = nil
  end

  def roll
    @result = (1..@sides).to_a().sample()
  end
end
