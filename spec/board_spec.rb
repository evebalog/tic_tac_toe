require 'board'

describe Board do

  it 'has a board' do
    board = Board.new
    expect(board).not_to be nil
  end

  it 'has nine fields' do
    board = Board.new
    expect(board.fields.size).to be 9
  end

  it '#get_display returns a string' do
    board = Board.new
    expect(board.get_display).to be_a String
  end

  it 'starts all the fields with nil values' do
    board = Board.new
    expect(board.fields[0..8]).to match_array([nil,nil,nil,nil,nil,nil,nil,nil,nil])
  end

  it 'fields can be marked by a player' do
    board = Board.new
    board.mark(0)
    expect(board.fields[0]).not_to be nil
  end

  it 'makes the first mark into an X' do
    board = Board.new
    board.mark(0)
    expect(board.fields[0]).to eq 'X'
  end

  it 'makes the second mark into an o' do
    board = Board.new
    board.mark(0)
    board.mark(1)
    expect(board.fields[1]).to eq 'o'
  end

  it 'makes the third mark into an X' do
    board = Board.new
    board.mark(0)
    board.mark(1)
    board.mark(2)
    expect(board.fields[2]).to eq 'X'
  end

  it 'cannot mark a field twice' do
    board = Board.new
    board.mark(0)
    board.mark(0)
    expect(board.fields[0]).to eq 'X'
  end

  it 'game is not finished when not all the fields are marked' do
    board = Board.new
    expect(board.is_finished?).to eq false
  end

  it 'will finish the game when all fields are marked' do
    board = Board.new
    (0..8).each do |position|
      board.mark(position)
    end
    expect(board.is_finished?).to eq true
  end
end
