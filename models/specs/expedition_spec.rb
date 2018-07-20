require('minitest/autorun')
require('minitest/rg')
require_relative('../expedition')

class TestExpedition < MiniTest::Test

  def setup
    @fellowship = Expedition.new('title' => 'Fellowship of the Ring',
    'price' => '10000',
    'objective' => 'Take the One Ring to Mordor, and cast it into the fiery
    pits of Mount Doom')
  end

  def test_get_price
    assert_equal(10000, @fellowship.price)
  end

  def test_get_objective
    assert_equal('Take the One Ring to Mordor, and cast it into the fiery
    pits of Mount Doom', @fellowship.objective)
  end

end
