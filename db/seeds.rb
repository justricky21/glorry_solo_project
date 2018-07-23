require_relative('../models/driver')
require_relative('../models/delivery')
require_relative('../models/customer')

Delivery.delete_all()
Driver.delete_all()
Customer.delete_all()

driver1 = Driver.new('name' => 'Ben Thomas',
'lorry' => 'Fiat Ducato',
'lorry_plate' => 'BD51SMR',
'archived' => 'false')

driver2 = Driver.new('name' => 'Joseph Serengetti',
'lorry' => 'Iveco Daily',
'lorry_plate' => 'IT15PGT',
'archived' => 'false')

driver3 = Driver.new('name' => 'Takashi Ideki',
'lorry' => 'Isuzu Trucks Forward',
'lorry_plate' => 'JP45SHI',
'archived' => 'true')

customer1 = Customer.new('company_name' => 'Tesco Ltd.',
'contact_name' => 'Laura Tate, Mrs',
'phone_number' => '102938472',
'address' => 'Tesco Distribution Centre, Carnegie Rd, Livingston EH54 8TB',
'email' => 'laura.tate@tesco.co.uk',
'archived' => 'false'
)

customer2 = Customer.new('company_name' => 'Sainsburys Ltd.',
'contact_name' => 'Mary Bennett, Ms',
'phone_number' => '101231212',
'address' => 'Elstree Distribution Centre, Elstree Way, Borehamwood, Hertfordshire WD6 1SN',
'email' => 'mary.bennet@sainsburys.co.uk',
'archived' => 'true')

customer3 = Customer.new('company_name' => 'ASDA Inc.',
'contact_name' => 'John Smith, Mr',
'address' => 'Asda Distribution Centre, Lymedale Business Park, Dalewood Road, Lymedale Business Park, Staffordshire, ST5 9QH',
'phone_number' => '101235039',
'email' => 'john_smith9@asda.co.uk',
'archived' => 'false')

delivery1 = Delivery.new('customer_id' => 1,
  'driver_id' => 1,
  'contents' => 'Some cotton balls'
)

delivery2 = Delivery.new('customer_id' => 2,
'driver_id' => 2,
'contents' => 'One ton of rubber ducks')

driver1.save
driver2.save
driver3.save
customer1.save
customer2.save
customer3.save
delivery1.save
delivery2.save
