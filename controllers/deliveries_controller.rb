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

post '/deliveries' do
  @deliveries = Delivery.search(params['query'])
    erb ( :'deliveries/index' )
end

# index by year
get '/deliveries/filter/:year' do
  @year = params['year'].to_i
  @deliveries = Delivery.year_all(params['year'].to_i)
  erb(:'deliveries/index_by_year')
end

# index by month
get '/deliveries/filter/:year/:month' do
  @year = params['year'].to_i
  @deliveries = Delivery.month_all(params['month'].to_i,params['year'].to_i)
  erb(:'deliveries/index_by_month')
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
  @customers = Customer.all
  @drivers = Driver.all
  erb(:'deliveries/edit')
end

# update
post '/deliveries/:id/edit' do
  p params
  delivery = Delivery.new(params)
  delivery.update
  redirect to '/deliveries'
end

# confirmation
get '/deliveries/:id/confirmation' do
  @delivery = Delivery.find(params['id'])
  erb(:'deliveries/confirmation')
end

# destroy
get '/deliveries/:id/delete' do
  @delivery = Delivery.find(params['id'])
  @delivery.delete
  redirect to '/deliveries'
end
