require("minitest/autorun")
require_relative("../player")
require_relative("../board")

class TestBoard < MiniTest::Test
  def setup
    @board_1 = Board.new
    @player_1 = Player.new("John", "green")
    @player_2 = Player.new("Mary", "blue")
  end

  def test_add_player
    @board_1.add_player(@player_1)
    @board_1.add_player(@player_2)
    added_players = [@player_1, @player_2]
    assert_equal(added_players, @board_1.players)
  end
end
