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
end
