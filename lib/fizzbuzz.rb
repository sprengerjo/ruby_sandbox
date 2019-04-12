def fizzbuzz(curr)
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

def fizzbuzz_upto(uo_to)
  (1..uo_to).map { |curr| fizzbuzz(curr) }
end
