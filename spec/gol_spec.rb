require 'Gol'

describe 'game of life' do
  let(:gol) { Gol.new }

  it 'returns the next generation of the blinker pattern' do
    expect(gol.next([[1, 0], [1, 1], [1, 2]]))
      .to eq([[0, 1], [1, 1], [2, 1]])
  end
end

describe 'neighbour detection' do
  let(:gol) { Gol.new }

  it 'returns empty neighbour array when empty tuple is passed' do
    expect(gol.neighbours_of([])).to eq([])
  end

  it 'returns empty neighbour array when empty tuple is passed' do
    expect(gol.neighbours_of([1, 1])).to eq([
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
end

describe 'check if cell does life' do
  let(:gol) { Gol.new }

  it 'returns false if cell has not enough or too many neighbours' do
    expect(gol.alive?(0)).to be_falsey
    expect(gol.alive?(1)).to be_falsey
    expect(gol.alive?(2)).to be_falsey
    expect(gol.alive?(4)).to be_falsey
    expect(gol.alive?(5)).to be_falsey
  end

  it 'returns true if cell is alive' do
    expect(gol.alive?(2, true)).to be_truthy
    expect(gol.alive?(3, true)).to be_truthy
    expect(gol.alive?(3, false)).to be_truthy
  end
end
