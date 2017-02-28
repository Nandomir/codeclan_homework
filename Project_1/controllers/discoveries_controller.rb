require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/discovery.rb')
require_relative('../models/exoplanet.rb')
require_relative('../models/astronomer.rb')
require('pry-byebug')

get '/discoveries' do
  @detections = Discovery.detections()
  erb(:"discoveries/index")
end