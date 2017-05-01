require('minitest/autorun')
require('minitest/emoji')
require_relative('../models/game')

class TestGame < MiniTest::Test

  def setup
    @game1 = Game.new('scissors', 'rock')
    @game2 = Game.new('paper', 'rock')
    @game3 = Game.new('paper', 'scissors')
    @game4 = Game.new('rock', 'scissors')
    @game5 = Game.new('scissors', 'paper')
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

  def test_paper_scissors
    assert_equal('Scissors wins!', @game3.win)
  end

  def test_rock_scissors
    assert_equal('Rock wins!', @game4.win)
  end

  def test_scissor_paper
    assert_equal('Scissors wins!', @game5.win)
  end

end
