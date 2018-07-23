require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require_relative( '../models/driver.rb' )
require_relative( '../models/customer.rb' )
require_relative( '../models/delivery.rb' )
also_reload 'models/*'

# restful routes
# index
get '/deliveries' do
  @deliveries = Delivery.all
  erb(:'deliveries/index')
end

# new
get '/deliveries/new' do
  @customers = Customer.all_but_archived
  @drivers = Driver.all_but_archived
  erb(:'deliveries/new')
end

# create
post '/deliveries/?' do
  p params
  @delivery = Delivery.new(params)
  @delivery.save()
  erb(:'deliveries/create')
end

# edit
get '/deliveries/:id/edit' do
  @delivery = Delivery.find(params['id'])
  erb(:'deliveries/edit')
end

# update
post '/deliveries/:id' do
  p params
  delivery = Delivery.new(params)
  delivery.update
  redirect to '/deliveries/' + params['id']
end

# destroy
get '/deliveries/:id/delete' do
  @delivery = Delivery.find(params['id'])
  @delivery.delete
  redirect to '/deliveries/'
end
