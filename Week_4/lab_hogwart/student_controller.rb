require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student.rb')

get '/student' do 
  @students = Student.all()
  erb(:index)
end

get '/student/new' do
  erb(:new)
end