class Player
attr_accessor(:winner)
attr_reader(:name, :colour, :position)

  def initialize(name, colour)
    @name = name
    @colour = colour
    @position = 0
    @position_type = :normal
    @winner = false
  end

  def check_if_winner()
    if @position >= 99
      @winner = true
      return "You've won! Game over!"
    end
  end

  def move(number)
    @position += number
    check_if_winner()
  end

  def move_based_on_tile(board)
    number = board.tiles[@position]
    if number = 0
      @position_type = :normal
    elsif number > 0
      @position_type = :ladder
    else
      @position_type = :snake
    end
    move(number)
  end



end
