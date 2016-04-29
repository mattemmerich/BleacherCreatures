require 'sinatra'
require 'sinatra/activerecord'
require './models'
require 'sinatra/reloader'
require 'bundler/setup'
require 'rack-flash'

enable :sessions  
use Rack::Flash, :sweep => true
configure(:development){set :database, 'sqlite3:BleacherCreatures.sqlite3'}
set :sessions, true

def current_user     
	if session[:user_id]
		@current_user = User.find(session[:user_id])  
	end
end

get '/' do
	@users = User.all
	erb :home
end


get '/users/:id' do
	@user = User.find(params[:id])
	erb :user
end

post '/sign-in' do  
	puts params.inspect
	@user = User.where(username: params[:login][:username]).first   
	if @user && @user.password == params[:login][:password]
			session[:user_id] = @user.id
			flash[:notice] = "You've been signed in successfully."
			redirect "/user"
		else
			flash[:alert] = "There was a problem signing you in."
		end
	redirect "/"
end

get '/signout' do
	session[:user_id] = nil
	redirect to('/')
end


# get '/post' do
# 	erb :
# end

# post '/posts/create' do
# 	post = Post.create(params[:post])
# 	redirect '/posts/#{post.id}'
# end	