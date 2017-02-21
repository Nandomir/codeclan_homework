require('sinatra')
require('sinatra/contrib/all')
require('pry')
require('./models/rock_paper_scissors.rb')
require('json')


get '/game/:hand1/:hand2' do
  hand_game = RockPaperScissors.new(params[:hand1], params[:hand2])
  @game = hand_game.game()
end


# Secondary solution

get '/' do
  erb(:home)
end

get '/rock' do
  erb(:rock)
  redirect '/rock'
end

post '/paper' do
  erb(:paper)
end

post '/scissors' do
  erb(:scissors)
end