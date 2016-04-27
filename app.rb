require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'sinatra/reloader'
require 'bundler/setup'
require 'rack-flash3'

use Rack::Flash, :sweep => true
set :database, 'sqlite3:BleacherCreatures.sqlite3'

get '/' do
	erb :home
end