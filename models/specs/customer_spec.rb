require('minitest/autorun')
require('minitest/rg')
require_relative('../customer')

class TestCustomer < MiniTest::Test

  def setup
    @customer1 = Customer.new('company_name' => 'Tesco Ltd.',
    'contact_name' => 'Laura Tate, Mrs',
    'phone_number' => '102938472',
    'address' => 'Tesco Distribution Centre, Carnegie Rd, Livingston EH54 8TB',
    'email' => 'laura.tate@tesco.co.uk'
    )
  end

  def test_get_company_name
    assert_equal('Tesco Ltd.', @customer1.company_name)
  end

  def test_get_phone_number
    assert_equal(102938472, @customer1.phone_number)
  end

end
