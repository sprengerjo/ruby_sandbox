require  'Bowling'

describe 'bowling score calculator' do
    before(:each) do
        @bowling = Bowling.new()
    end

    it 'returns score of 0 when gutter games are scored' do
        (1..20).each{ |_| @bowling.roll(0) }
        
        expect(@bowling.score()).to eq(0)
    end

    it 'returns score of 20 when 1 pin games are scored' do
        (1..20).each{ |_| @bowling.roll(1) }
        
        expect(@bowling.score()).to eq(20)
    end

    it 'adds the spare bonus when 1 spare is scored' do
        @bowling.roll(4)
        @bowling.roll(6)
        (1..18).each{ |_| @bowling.roll(4) }
        
        expect(@bowling.score()).to eq(4 + 6 + 4 + 18 * 4)
    end

    it 'adds the strike bonus when 1 strike is scored' do
        @bowling.roll(10)
        (1..18).each{ |_| @bowling.roll(4) }
        
        expect(@bowling.score()).to eq(10 + 4 + 4 + 18 * 4)
    end

    it 'returns 300 when a perfect game is scored' do
        (1..12).each{ |_| @bowling.roll(10) }
        
        expect(@bowling.score()).to eq(300)
    end
end
