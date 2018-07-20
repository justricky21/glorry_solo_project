require('minitest/autorun')
require('minitest/rg')
require_relative('../patron')

class TestPatron < MiniTest::Test

  def setup
    @elrond = Patron.new('name' => 'Elrond',
    'background' => 'Elven lord of Rivendell.')
  end

  def test_get_name
    assert_equal('Elrond', @elrond.name)
  end

  def test_get_background
    assert_equal('Elven lord of Rivendell.', @elrond.background)
  end

end
