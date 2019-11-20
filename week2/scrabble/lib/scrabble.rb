# Requirements
#
# Given a word, compute the scrabble score for that word.
#
# Letter Values
#
#
# Letter	Value
# A, E, I, O, U, L, N, R, S, T  	1
# D, G                          	2
# B, C, M, P	                    3
# F, H, V, W, Y	                  4
# K	                              5
# J, X                          	8
# Q, Z	                          10
#
#
# scrabble = Scrabble.new('')
# scrabble.score # => 0
#
# scrabble = Scrabble.new(" \t\n")
# scrabble.score # => 0
#
# scrabble = Scrabble.new(nil)
# scrabble.score # => 0
#
# scrabble = Scrabble.new('a')
# scrabble.score # => 1
#
# scrabble = Scrabble.new('f')
# scrabble.score # => 4
#
# scrabble = Scrabble.new('street')
# scrabble.score # => 6
#
# scrabble = Scrabble.new('quirky')
# scrabble.score # => 22
#
# scrabble = Scrabble.new('OXYPHENBUTAZONE')
# "" --> 0
# " \t\n" --> 0
# nil --> 0
# "a" --> 1
# "f" --> 4
# "street" --> 6
# "quirky" --> 22
# "OXYPHENBUTAZONE" --> 41
class Scrabble

def scrabble(word)

  hash = {
    " " => 0,
    "a" => 1,
    "b" => 3,
    "c" => 3,
    "d" => 2,
    "e" => 1,
    "f" => 4,
    "g" => 2,
    "h" => 4,
    "i" => 1,
    "j" => 8,
    "k" => 5,
    "l" => 1,
    "m" => 3,
    "n" => 1,
    "o" => 1,
    "p" => 3,
    "q" => 10,
    "r" => 1,
    "s" => 1,
    "t" => 1,
    "u" => 1,
    "v" => 4,
    "w" => 4,
    "x" => 8,
    "y" => 4,
    "z" => 10
  }
  array = []
  if word == 0 || word == nil
    return 0
  elsif word.length == 1
     return hash[word]
  elsif word.length > 1
    word.split("").map do |let|
    array << hash[let]
    end
    array.inject(:+)
  end
end

end
