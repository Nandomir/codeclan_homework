require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/astronomer.rb')
require('pry-byebug')

get '/astronomers' do
  @astronomers = Astronomer.all()
  erb(:"astronomers/index")
end