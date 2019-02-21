class Bowling
    
    def initialize()
        @scores = []
    end

    def roll(pins)
        @scores.push(pins)
    end
    
    def score()
        @scores.inject(0){ |sum, curr| sum + curr} + bonus(@scores)
    end

    def bonus(s)
        head, second, *tail = s
        if tail.length < 2
            0 
        elsif head == 10 
            second + tail.first() + bonus(tail.unshift(second))
        elsif head + second == 10 
            tail.first() + bonus(tail)
        else 
            bonus(tail)
        end
    end
end