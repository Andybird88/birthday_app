require 'sinatra/base'
require 'sinatra/reloader'
require './lib/birthday_calc'

class Birthday < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    
    erb(:index)
  end

  get '/info' do
    @name = (params[:name])
    @day = (params[:day])
    @month = (params[:month])
    birthday = BirthdayCalc.new(@name,@day,@month)
    erb(:birthday)
  end

 

 
 

  # start the server if ruby file executed directly
  run! if app_file == $0
end