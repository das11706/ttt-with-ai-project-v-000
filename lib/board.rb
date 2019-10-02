require 'pry'
class Board
  attr_accessor :cells, :player

  def initialize
    @cells = Array.new(9, " ")
    # @cells = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def reset!
    cells.clear
    # cells = [" "]
    cells.fill(" ", 0, 9)
  end

  def display
      puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
      puts "-----------"
      puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
      puts "-----------"
      puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(input)
      @input = @cells[input.to_i - 1]
      # binding.pry
  end

  def full?
    @cells.all? { |cell| cell != " "  }
  end

  def turn_count
    count = 0
    @cells.each do |cell|
      if cell != " "
        count += 1
      end
    end
    count
  end

  def taken?(input)
    if position(input) != " "
      true
    else false
    end
    # binding.pry
  end

  def valid_move?(input)
    input.to_i.between?(1, 9) && !taken?(input)
      # binding.pry
    # input.to_i.between?(1, 9) && position(input) == " "
  end

  def update(pos, player)
    pos = player.token
    @cells = pos
    # binding.pry
  end
# Similarly, you're going to build an #update method that represents updating the board when a player makes a move.
# This method will take two arguments, the first will be the position the user wants
# to occupy in the form of 1-9 strings that you will need to convert to the board cells' array index,
# along with the player object making the move. When you update the appropriate index in the cells,
# you will set it equal to the token of the player object by calling the #token method on the player.

end
