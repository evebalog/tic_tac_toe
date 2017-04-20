class Board
attr_accessor :fields
  def initialize
    @fields = Array.new(9)
    @first_player = true
  end

  def get_display
    display = "\n-----------\n"
      (0..8).each do |mark|
        display << " #{@fields[mark] || mark} "
        if mark % 3 == 2
          display << "\n-----------\n"
        else
          display << "|"
        end
      end
    display
  end

  def mark(position)
    if @fields[position]# != nil
      return("That field is already taken, pick another one!")
    end

    if @first_player
      @fields[position] = 'X'
    else
      @fields[position] = 'o'
    end

    @first_player = !@first_player
  end

  def game
    #First: display board
    puts get_display
    #Then prompt the player to mark a field

    #Then display the board again
  end

  def is_finished?
    !@fields.include?(nil)
  end
end
