require('minitest/autorun')
require('minitest/rg')
require_relative('../patron')

def TestPatron < MiniTest::Test

  def setup
    elrond = Patron.new('name' => 'Elrond',
    'background' => 'Elven lord of Rivendell.')
  end

end
