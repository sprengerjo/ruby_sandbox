# algorithms goe here.
class Algorithms
  @cache = { 0 => 1 }

  def self.twice_linear(up_to)
    curr = 1
    while up_to > 0
      curr = knuth(curr)
      up_to -= 1
    end
    curr
  end

  def self.knuth(curr)
    unless @cache.key?(curr)
      @cache[curr] = 1 + [
        2 * knuth(((curr - 1) / 2).floor),
        3 * knuth(((curr - 1) / 3).floor)
      ].min
    end
    @cache[curr]
  end
end
