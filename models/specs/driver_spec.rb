require('minitest/autorun')
require('minitest/rg')
require_relative('../driver')

class TestDriver < MiniTest::Test

  def setup
    @driver1 = Driver.new('name' => 'Ben Thomas',
    'lorry' => 'Fiat Ducato',
    'lorry_plate' => 'BD51SMR',
    'current_delivery' => 'Some balls of cotton')
  end

  def test_get_name
    assert_equal('Ben Thomas', @driver1.name)
  end

  def test_get_level
    assert_equal('BD51SMR', @driver1.lorry_plate)
  end

end
