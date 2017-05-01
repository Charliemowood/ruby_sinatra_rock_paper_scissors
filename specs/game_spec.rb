require('minitest/autorun')
require('minitest/emoji')
require_relative('../models/game')

class TestGame < MiniTest::Test

  def setup
    @game1 = Game.new('scissors', 'rock')
  end

  def test_exists_class_rps
    refute_nil(@game1)
  end

end
