require_relative('../models/driver')
require_relative('../models/delivery')
require_relative('../models/customer')

# driver1 = Driver.new('name' => 'Ben Thomas',
# 'lorry' => 'Fiat Ducato',
# 'lorry_plate' => 'BD51SMR',
# 'current_delivery' => 'Some balls of cotton')

# customer1 = Customer.new('company_name' => 'Tesco Ltd.',
# 'contact_name' => 'Laura Tate, Mrs',
# 'phone_number' => '102938472',
# 'address' => 'Tesco Distribution Centre, Carnegie Rd, Livingston EH54 8TB',
# 'email' => 'laura.tate@tesco.co.uk'
# )

delivery1 = Delivery.new('customer_id' => 1,
  'driver_id' => 1,
  'contents' => 'Some cotton balls'
)

# driver1.save
# customer1.save
delivery1.save
