require('minitest/autorun')
require('minitest/rg')
require_relative('../delivery')

class TestDelivery < MiniTest::Test

  def setup
    @delivery1 = Delivery.new('customer_id' => 1,
      'driver_id' => 1,
      'contents' => 'Some cotton balls'
    )
  end

  def test_get_contents
    assert_equal('Some cotton balls', @delivery1.contents)
  end

  def test_get_driver_id
    assert_equal(1, @delivery1.driver_id)
  end

end
