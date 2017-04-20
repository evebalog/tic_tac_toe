class Board
attr_accessor :fields
  def initialize
    @fields = Array.new(9)
  end

  def get_display
    display = "\n-----------\n"
#       (0..8).each do |mark|
#         display << " #{@fields[mark] || mark} "
#         if mark % 3 == 2
#           display << "\n-----------\n"
#         else
#           display << "|"
#         end
#       end
    display
  end
end
