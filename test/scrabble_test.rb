gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_multiple_letters
    assert_equal 5, Scrabble.new.score("cat")
    assert_equal 7, Scrabble.new.score("Pigs")
  end

  def test_it_returns_zero_for_empty_input
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_returns_zero_for_nil_input
    assert_equal 0, Scrabble.new.score(nil)
  end
end
