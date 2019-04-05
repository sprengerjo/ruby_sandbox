class Algorithms
  @cache = { 0 => 1 }

  def self.twice_linear(n)
    a = 1
    while n > 0
      a = knuth(a)
      n -= 1
    end
    a
  end

  def self.knuth(a)
    unless @cache.key?(a)
      @cache[a] = 1 + [
        2 * knuth(((a - 1) / 2).floor),
        3 * knuth(((a - 1) / 3).floor)
      ].min
    end
    @cache[a]
  end
end
