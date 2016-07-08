require 'active_record'
require 'sinatra'

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'sinatra_application.sqlite3.db',
)

get '/hi' do
  "Hello world!"
end

get '/' do
  @shows = Show.all()
  erb :index
end

require_relative 'app/models/init'
