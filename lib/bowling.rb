# the famous bolwing game calculator
class Bowling
  def initialize
    @scores = []
  end

  def roll(pins)
    scores.push(pins)
  end

  def score()
    scores.reduce(0) {|sum, curr| sum + curr} + bonus(scores)
  end

  private

  def bonus(scores)
    head, second, *tail = scores

    if tail.length < 2
      0
    elsif head == 10
      tail[0] + tail[1] + bonus(tail.unshift(second))
    elsif head + second == 10
      tail[0] + bonus(tail)
    else
      bonus(tail)
    end

  end

  attr_reader :scores

end
