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
	# @user = current_user
	@user = User.find(params[:id])
	erb :user
end

post '/sign-in' do  
	puts params.inspect
	@user = User.where(username: params[:username]).first   
	if @user && @user.password == params[:password]
		session[:user_id] = @user.id
		flash[:notice] = "You've been signed in successfully."
		redirect "/users/#{current_user.id}"
	else
		flash[:alert] = "There was a problem signing you in."
		redirect "/"
	end
end

post '/sign-up' do
	puts params.inspect
	@user = User.create({fname: params[:fname]}, {lname: params[:lname]}, {username: params[:username]}, {email: params[:email]}, {password: params[:password]})
	redirect '/users/#{current_user.id}'
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