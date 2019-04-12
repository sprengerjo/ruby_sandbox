require 'Bowling'

describe 'bowling game calculation' do
  let(:game) { Bowling.new }

  it 'scores 0 for gutter games' do
    (1..20).each { |_| game.roll(0) }

    expect(game.score).to eq(0)
  end

  it 'scores 20 for 1 pin games' do
    (1..20).each { |_| game.roll(1) }

    expect(game.score).to eq(20)
  end

  it 'adds spare bonus to overall score' do
    game.roll(4)
    game.roll(6)
    (1..18).each { |_| game.roll(4) }

    expect(game.score).to eq(4 + 6 + 4 + 18 * 4)
  end

  it 'adds strike bonus to overall score' do
    game.roll(10)
    (1..18).each { |_| game.roll(4) }

    expect(game.score).to eq(10 + 4 + 4 + 18 * 4)
  end

  it 'scores a perfect game with 300' do
    (1..12).each { |_| game.roll(10) }

    expect(game.score).to eq(300)
  end
end
