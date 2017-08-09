require("minitest/autorun")
require_relative("../player")
require_relative("../dice")
require_relative("../board")

class TestPlayer < MiniTest::Test
  def setup
    @player_1 = Player.new("John", "green")
    @dice_1 = Dice.new
    @board_1 = Board.new
  end

  def test_player_has_name
    assert_equal("John", @player_1.name)
  end

  def test_player_has_colour
    assert_equal("green", @player_1.colour)
  end

  def test_player_starts_at_0
    assert_equal(0, @player_1.position)
  end

  def test_move
    @player_1.move(5)
    assert_equal(5, @player_1.position)
  end

  def test_move_using_dice_roll
    @dice_1.roll
    @player_1.move(@dice_1.result)
    if @player_1.position != 0
      condition = true
    end
    assert_equal(true, condition)
  end

  def test_move_based_on_tile_type
    @player_1.move(2)
    @player_1.move_based_on_tile(@board_1)
    assert_equal(50, @player_1.position )
  end

  def test_check_if_winner
    @player_1.move(100)
    assert_equal(true, @player_1.winner)
  end
end
