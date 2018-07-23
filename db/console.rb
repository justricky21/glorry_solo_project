require_relative('../models/driver')
require_relative('../models/delivery')
require_relative('../models/customer')

driver1 = Driver.find(10)
driver2 = Driver.find(3)

p driver1.deliveries[0]
p driver2.deliveries
