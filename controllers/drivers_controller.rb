require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require( 'pry-byebug' ) if development?
require_relative( '../models/driver.rb' )
# restful routes
# index
get '/drivers/?' do
  @drivers = Driver.all
  erb(:'drivers/index')
end

# new
get '/drivers/new' do
  erb(:'drivers/new')
end

# create
post '/drivers/?' do
  p params
  @driver = Driver.new(params)
  @driver.save()
  erb(:'drivers/create')
end

# show
get '/drivers/:id' do
  @driver = Driver.find(params['id'].to_i)
  erb(:'drivers/show')
end

# edit
get '/drivers/:id/edit' do
  @driver = Driver.find(params['id'])
  erb(:'drivers/edit')
end

# update
post '/drivers/:id' do
  p params
  driver = Driver.new(params)
  driver.update
  redirect to '/drivers/' + params['id']
end

# destroy
get '/drivers/:id/delete' do
  @driver = Driver.find(params['id'])
  @driver.delete
  redirect to '/drivers/'
end

#  confirm archiving
get '/drivers/:id/confirmation' do
  @driver = Driver.find(params['id'])
  erb(:'drivers/confirmation')
end

# archive
get '/drivers/:id/archive' do
  @driver = Driver.find(params['id'])
  if @driver.deliveries[0] == nil
    @driver.archived = 't'
    @driver.update
    erb (:'drivers/archive')
  else
    @driver.archived = 't'
    @driver.update
    redirect to '/drivers/' + params['id']
  end
end
