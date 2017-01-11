require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/daysalive' do
    #pull info out of params hash
    user_birthday=params[:birthday]
    @result=years_alive(user_birthday)
    erb :results
  end
  
  
end