require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative('controllers/customers_controller')
require_relative('controllers/drivers_controller')
require_relative('controllers/deliveries_controller')

get '/' do
  @deliveries = Delivery.latest_five
  erb( :index )
end