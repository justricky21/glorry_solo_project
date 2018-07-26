require_relative('../models/driver')
require_relative('../models/delivery')
require_relative('../models/customer')

# Delivery.delete_all()
# Driver.delete_all()
# Customer.delete_all()

driver1 = Driver.new('name' => 'Jaeden Church',
'lorry' => 'Fiat Ducato',
'lorry_plate' => 'UK54L4D',
'archived' => 'f')

driver2 = Driver.new('name' => 'Cooper Maynard',
'lorry' => 'Iveco Daily',
'lorry_plate' => 'T333AGS',
'archived' => 'f')

driver3 = Driver.new('name' => 'Finnley Connolly',
'lorry' => 'Isuzu Trucks Forward',
'lorry_plate' => '0B1ONES',
'archived' => 'f')

driver4 = Driver.new('name' => 'Justine Blair',
'lorry' => 'Mercedes Sprinter',
'lorry_plate' => 'WHO5SHE',
'archived' => 'f')

driver5 = Driver.new('name' => 'Cheyenne Terrel',
'lorry' => 'Iveco Eurocargo',
'lorry_plate' => 'GRI3GGS',
'archived' => 'f')

driver6 = Driver.new('name' => 'Anika Greer',
'lorry' => 'Mitsubishi Fuso Canter',
'lorry_plate' => 'JANI70R',
'archived' => 'f')

driver7 = Driver.new('name' => 'Katerina Lugo',
'lorry' => 'Fiat Auto Trail',
'lorry_plate' => 'M14SPY',
'archived' => 'f')

driver8 = Driver.new('name' => 'Hareem Watts',
'lorry' => 'Fiat Ducato',
'lorry_plate' => 'H005DAT',
'archived' => 'f')

driver9 = Driver.new('name' => 'Michal Gregory',
'lorry' => 'Fiat Ducato',
'lorry_plate' => 'WATT5UP',
'archived' => 'f')

driver10 = Driver.new('name' => 'Tanner Martin',
'lorry' => 'Iveco Eurocargo',
'lorry_plate' => 'NO67FUN',
'archived' => 'f')

customer1 = Customer.new('company_name' => 'Tesco plc',
'contact_name' => 'Laura Tate, Mrs',
'phone_number' => '102938472',
'address' => 'Tesco Distribution Centre, Carnegie Rd, Livingston EH54 8TB',
'email' => 'laura.tate@tesco.co.uk',
'archived' => 'f')

customer2 = Customer.new('company_name' => 'J Sainsburys plc',
'contact_name' => 'Mary Bennett, Ms',
'phone_number' => '101231212',
'address' => 'Elstree Distribution Centre, Elstree Way, Borehamwood, Hertfordshire WD6 1SN',
'email' => 'mary.bennet@sainsburys.co.uk',
'archived' => 'f')

customer3 = Customer.new('company_name' => 'ASDA Stores ltd.',
'contact_name' => 'John Smith, Mr',
'address' => 'Asda Distribution Centre, Lymedale Business Park, Dalewood Road, Lymedale Business Park, Staffordshire, ST5 9QH',
'phone_number' => '101235039',
'email' => 'john_smith9@asda.co.uk',
'archived' => 'f')

customer4 = Customer.new('company_name' => 'TK Maxx',
'contact_name' => 'Reese Sadler',
'address' => 'TK Maxx, 1 Hermiston Gait Retail Park, 41 Cultins Rd, Edinburgh EH11 4DF',
'phone_number' => '107266519',
'email' => 'reese.sadler@tkmaxx.co.uk',
'archived' => 'f')

customer5 = Customer.new('company_name' => 'Primark',
'contact_name' => 'Mica Bradshaw',
'address' => 'Primark, 127 - 137 High Street, Dunfermline KY12 7DR',
'phone_number' => '101597251',
'email' => 'mica.bradshaw@primark.co.uk',
'archived' => 'f')

customer6 = Customer.new('company_name' => 'CodeClan',
'contact_name' => 'Melinda Matthews',
'address' => '37 Castle Terrace, Edinburgh, EH1 2EL',
'phone_number' => '107985984',
'email' => 'melinda.matthews@codeclan.co.uk',
'archived' => 'f')

customer7 = Customer.new('company_name' => 'Waitrose',
'contact_name' => 'Mikaela House',
'address' => 'Waitrose, 38 Comely Bank Rd, Edinburgh EH4 1AW',
'phone_number' => '109008900',
'email' => 'mikaela.house@waitrose.co.uk',
'archived' => 'f')

customer8 = Customer.new('company_name' => 'Morrisons',
'contact_name' => 'Jesse Downs',
'address' => 'Co-op, Clayknowes Rd, Stoneyhill, Musselburgh EH21 6UW',
'phone_number' => '103663098',
'email' => 'jesse.downs@morrisons.co.uk',
'archived' => 'f')

customer9 = Customer.new('company_name' => 'Aldi',
'contact_name' => 'Niko Pierce',
'address' => 'Aldi Regional Office and Distribution Centre, Pottishaw Rd, Bathgate EH48 2FB',
'phone_number' => '108032575',
'email' => 'niko.pierce@aldi.co.uk',
'archived' => 'f')

customer10 = Customer.new('company_name' => 'Brittish Petroleum',
'contact_name' => 'Zhane Richardson',
'address' => 'BP, Barclay Pl, Edinburgh EH10 4DG',
'phone_number' => '104905883',
'email' => 'zhane.richardson@bp.co.uk',
'archived' => 'f')


delivery1 = Delivery.new('customer_id' => 1,
  'driver_id' => 1,
  'contents' => 'Foodstuffs',
  'time' => Date.parse('2001-02-03')
)

delivery2 = Delivery.new('customer_id' => 1,
'driver_id' => 2,
'contents' => 'Foodstuffs and toiletries',
'time' => Date.parse('2011-02-03')
)

delivery3 = Delivery.new('customer_id' => 2,
'driver_id' => 3,
'contents' => 'Foodstuffs',
'time' => Date.parse('2014-10-03')
)

delivery4 = Delivery.new('customer_id' => 2,
'driver_id' => 4,
'contents' => 'Beverages',
'time' => Date.parse('2014-05-03')
)

delivery5 = Delivery.new('customer_id' => 3,
'driver_id' => 5,
'contents' => 'Fishes',
'time' => Date.parse('2013-05-03')
)

delivery6 = Delivery.new('customer_id' => 3,
'driver_id' => 6,
'contents' => 'Batteries. HAZARDOUS',
'time' => Date.parse('2013-02-03')
)

delivery7 = Delivery.new('customer_id' => 4,
'driver_id' => 7,
'contents' => 'Shoes, trousers',
'time' => Date.parse('2004-10-03')
)

delivery8 = Delivery.new('customer_id' => 4,
'driver_id' => 8,
'contents' => 'Shirts, trousers',
'time' => Date.parse('2004-02-03')
)

delivery9 = Delivery.new('customer_id' => 5,
'driver_id' => 9,
'contents' => 'Shoes, trousers',
'time' => Date.parse('2002-02-03')
)

delivery10 = Delivery.new('customer_id' => 6,
'driver_id' => 10,
'contents' => 'Computer equipment, cables',
'time' => Date.parse('2015-02-03')
)

delivery11 = Delivery.new('customer_id' => 6,
'driver_id' => 1,
'contents' => 'Construction equipment, rubber ducks',
'time' => Date.parse('2015-03-03')
)

delivery12 = Delivery.new('customer_id' => 7,
'driver_id' => 2,
'contents' => 'Gourmet foodstuffs',
'time' => Date.parse('2016-02-03')
)

delivery13 = Delivery.new('customer_id' => 7,
'driver_id' => 3,
'contents' => 'Fancy diner cutlery',
'time' => Date.parse('2003-02-03')
)

delivery14 = Delivery.new('customer_id' => 8,
'driver_id' => 4,
'contents' => 'Foodstuffs, batteries',
'time' => Date.parse('2007-02-03')
)

delivery15 = Delivery.new('customer_id' => 8,
'driver_id' => 5,
'contents' => 'Fridges',
'time' => Date.parse('2008-02-03')
)

delivery16 = Delivery.new('customer_id' => 9,
'driver_id' => 6,
'contents' => 'Foodstuffs',
'time' => Date.parse('2017-02-03')
)

delivery18 = Delivery.new('customer_id' => 10,
'driver_id' => 9,
'contents' => 'Petrol',
'time' => Date.parse('2001-02-03')
)


driver1.save
driver2.save
driver3.save
driver4.save
driver5.save
driver6.save
driver7.save
driver8.save
driver9.save
driver10.save
customer1.save
customer2.save
customer3.save
customer4.save
customer5.save
customer6.save
customer7.save
customer8.save
customer9.save
customer10.save
delivery1.save_for_seed
delivery2.save_for_seed
delivery3.save_for_seed
delivery4.save_for_seed
delivery5.save_for_seed
delivery6.save_for_seed
delivery7.save_for_seed
delivery8.save_for_seed
delivery9.save_for_seed
delivery10.save_for_seed
delivery11.save_for_seed
delivery12.save_for_seed
delivery13.save_for_seed
delivery14.save_for_seed
delivery15.save_for_seed
delivery16.save_for_seed
delivery18.save_for_seed
