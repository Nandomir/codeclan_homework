require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/discovery.rb')
require_relative('../models/exoplanet.rb')
require_relative('../models/astronomer.rb')
require('pry-byebug')

get '/discoveries' do
  @discoveries = Discovery.detection()

  # @discover_data = DiscoverData.gather(@discoveries)

  erb(:"discoveries/index")
end