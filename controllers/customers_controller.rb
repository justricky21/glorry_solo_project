require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require( 'pry-byebug' ) if development?
require_relative( '../models/customer.rb' )
also_reload 'models/*'
# restful routes
# index
get '/customers/?' do
  @customers = Customer.all
  erb(:'customers/index')
end

# new
get '/customers/new' do
  erb(:'customers/new')
end

# create
post '/customers/?' do
  p params
  @customer = Customer.new(params)
  @customer.save()
  erb(:'customers/create')
end

# show
get '/customers/:id' do
  @customer = Customer.find(params['id'].to_i)
  erb(:'customers/show')
end

# edit
get '/customers/:id/edit' do
  @customer = Customer.find(params['id'])
  erb(:'customers/edit')
end

# update
post '/customers/:id' do
  p params
  customer = Customer.new(params)
  customer.update
  redirect to '/customers/' + params['id']
end

# destroy
get '/customers/:id/delete' do
  @customer = Customer.find(params['id'])
  @customer.delete
  redirect to '/customers/'
end

#  confirm archiving
get '/customers/:id/confirmation' do
  @customer = Customer.find(params['id'])
  erb(:'customers/confirmation')
end

# archive
get '/customers/:id/archive' do
  @customer = Customer.find(params['id'])
  if @customer.deliveries[0] == nil
    @customer.archived = 't'
    @customer.update
    erb (:'customers/archive')
  else
    @customer.archived = 't'
    @customer.update
    redirect to '/customers/'
    redirect to '/customers/' + params['id']
  end
end
