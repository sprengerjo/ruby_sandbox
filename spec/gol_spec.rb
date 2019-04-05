require 'Gol'

describe 'game of life' do
  before(:each) do
    @gol = Gol.new
  end

  it 'returns the next generation of the blinker pattern' do
    expect(@gol.next([[1, 0], [1, 1], [1, 2]])).to eq([[0, 1], [1, 1], [2, 1]])
  end

  it 'returns empty neighbour array when empty tuple is passed' do
    expect(@gol.neighbours_of([])).to eq([])
  end

  it 'returns empty neighbour array when empty tuple is passed' do
    expect(@gol.neighbours_of([1, 1])).to eq([
                                               [0, 0],
                                               [0, 1],
                                               [0, 2],
                                               [1, 0],
                                               [1, 2],
                                               [2, 0],
                                               [2, 1],
                                               [2, 2]
                                             ])
  end

  it 'returns false if cell has not enough or too many neighbours' do
    expect(@gol.alive?(0)).to be_falsey
    expect(@gol.alive?(1)).to be_falsey
    expect(@gol.alive?(2)).to be_falsey
    expect(@gol.alive?(4)).to be_falsey
    expect(@gol.alive?(5)).to be_falsey
  end

  it 'returns true if cell is alive' do
    expect(@gol.alive?(2, true)).to be_truthy
    expect(@gol.alive?(3, true)).to be_truthy
    expect(@gol.alive?(3, false)).to be_truthy
  end
end
