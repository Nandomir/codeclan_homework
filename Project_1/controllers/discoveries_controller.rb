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

get '/discoveries/:id' do
  @discovery = Discovery.find(params[:id].to_i)
  erb(:"discoveries/show")
end

# get '/discoveries:id' do
#   @detections = Discovery
# end

# post '/discoveries/:id/delete' do
#   @discovery = Discovery.find(params[:id])
#   @discovery.delete()
#     redirect to '/discoveries'
# end