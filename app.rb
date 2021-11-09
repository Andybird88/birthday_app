# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'
require './lib/birthday'

class Birthdayapp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  get '/info' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    birthday = Birthday.new(@name, @day, @month)
    @days_until_birthday = birthday.count_down
    erb(:birthday)
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
