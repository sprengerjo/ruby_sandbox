def fizzbuzz(n)
  if n % 15 == 0
    'fizzbuzz'
  elsif n % 3 == 0
    'fizz'
  elsif n % 5 == 0
    'buzz'
  else
    n.to_s
  end
end

def fizzbuzz_upto(n)
  (1..n).map { |n| fizzbuzz(n) }
end
