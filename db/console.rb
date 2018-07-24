require_relative('../models/driver')
require_relative('../models/delivery')
require_relative('../models/customer')
require('time')

p Delivery.unique_years
p Delivery.year_all(2014)
p Delivery.month_all(2, 2014)
