require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/exoplanet.rb')
require('pry-byebug')

get '/exoplanets' do
  @exoplanets = Exoplanet.all()
  erb(:"exoplanets/index")
end