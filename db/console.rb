require_relative('../models/adventurer')
require_relative('../models/expedition')
require_relative('../models/patron')

aragorn = Adventurer.new('name' => 'Aragorn',
'title' => 'Longshanks',
'class' => 'Ranger',
'level' => '12',
'status' => 'Adventuring',
'adventure' => 'The Fellowship of the Ring',
'background' => 'Speaks Elvish fluently. Ingenious, very skilled with both sword and bow. Incredibly knowledgeable of herbs and remedies. Works very well in a team.')

fellowship = Expedition.new(
'adventurer_id' => '3',
'patron_id' => '1',
'title' => 'Fellowship of the Ring',
'price' => '10000',
'objective' => 'Take the One Ring to Mordor, and cast it into the fiery
pits of Mount Doom')

elrond = Patron.new('name' => 'Elrond',
'background' => 'Elven lord of Rivendell.')

fellowship.save
