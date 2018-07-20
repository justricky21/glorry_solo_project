require('minitest/autorun')
require('minitest/rg')
require_relative('../adventurer')

def TestAdventurer < MiniTest::Test

  def setup
    aragorn = Adventurer.new('name' => 'Aragorn',
    'title' => 'Longshanks'
    'class' => 'Ranger'
    'level' => '12'
    'status' => 'Adventuring'
    'adventure' => 'The Fellowship of the Ring'
    'background' => 'Speaks Elvish fluently. Ingenious, very skilled with both
    sword and bow. Incredibly knowledgeable of herbs and remedies. Works very
    well in a team.')
  end

  
end
