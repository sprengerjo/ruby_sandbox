require 'Algorithms'

describe 'twice linear alogrithm' do
  it 'expect correct results when number is passed' do
    expect(Algorithms.twice_linear(10)).to eq(22)
    expect(Algorithms.twice_linear(20)).to eq(57)
    expect(Algorithms.twice_linear(30)).to eq(91)
    expect(Algorithms.twice_linear(50)).to eq(175)
    expect(Algorithms.twice_linear(6_000)).to eq(80_914)
    expect(Algorithms.twice_linear(60_000)).to eq(1_511_311)
  end
end
