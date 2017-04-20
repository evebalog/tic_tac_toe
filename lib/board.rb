class Board
attr_accessor :fields
  WINNING_COMBOS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

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
    puts get_display
  end

  def is_finished?
    !@fields.include?(nil) || has_a_winner?
  end

  def has_a_winner?
    current_xs = @fields.each_index.select{|i| @fields[i] == 'X'}
    current_os = @fields.each_index.select{|i| @fields[i] == 'o'}

    WINNING_COMBOS.each do |winning_combo|
      if winning_combo == current_xs || winning_combo == current_os
        return true
      end
    end
    return false
  end
end
