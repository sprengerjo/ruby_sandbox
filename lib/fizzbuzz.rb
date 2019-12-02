class FizzBuzz

  def parse_number(curr)
    if (curr % 15).zero?
      'fizzbuzz'
    elsif (curr % 3).zero?
      'fizz'
    elsif (curr % 5).zero?
      'buzz'
    else
      curr.to_s
    end
  end

  def upto(uo_to)
    (1..uo_to).map { |curr| parse_number(curr) }
  end
end
