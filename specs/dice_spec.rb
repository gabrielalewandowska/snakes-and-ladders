require("minitest/autorun")
require_relative("../dice")

class TestDice < MiniTest::Test
  def setup
    @dice_1 = Dice.new
  end

  def test_has_sides
    assert_equal(6, @dice_1.sides)
  end

  def test_roll
    @dice_1.roll
    condition = false
    if @dice_1.result >= 1 && @dice_1.result <= 6
      condition = true
    end
    assert_equal(true, condition)
  end
end
