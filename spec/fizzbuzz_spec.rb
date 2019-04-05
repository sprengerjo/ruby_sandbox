require 'fizzbuzz'

describe 'fizzbuzz' do
  it 'returns "fizz" when passed 3' do
    expect(fizzbuzz(3)).to eq('fizz')
  end

  it 'returns "buzz" when passed 5' do
    expect(fizzbuzz(5)).to eq('buzz')
  end

  it 'returns "fizzbuzz" when passed 15' do
    expect(fizzbuzz(15)).to eq('fizzbuzz')
  end

  it 'returns "1" when passed 1' do
    expect(fizzbuzz(1)).to eq('1')
  end

  it 'returns fizzbuzz sequence ending with "fizzbuzz" when passed 15' do
    expect(fizzbuzz_upto(15)).to eq(%w[1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz])
  end
end
