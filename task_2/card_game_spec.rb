require('minitest/autorun')
require('minitest/rg')
require_relative('card_game.rb')
require_relative('card.rb')

class TestCardGame < Minitest::Test

  def setup
    @card1 = Card.new('hearts', 1)
    @card2 = Card.new('spades', 5)
    @cards = [@card1, @card2]
  end



  def test_check_for_ace()
    result = check_for_ace(@card1)
    assert_equal('true', result)
  end

  def test_highest_card()
    result = highest_card(@card2, @card1)
    assert_equal(5, result)
  end

  def test_cards_total()
    result = cards_total(@cards)
    assert_equal("You have a total of 6", result)
  end

end
