require('minitest/autorun')
require('minitest/emoji')
require_relative('../models/game')

class TestGame < MiniTest::Test

  def setup
    @game1 = Game.new('scissors', 'rock')
    @game2 = Game.new('paper', 'rock')
  end

  def test_exists_class_rps
    refute_nil(@game1)
  end

  def test_scissor_rock
    assert_equal('Rock wins!', @game1.win)
  end

  def test_paper_rock
    assert_equal('Paper wins!', @game2.win)
  end

end
