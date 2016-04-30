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
	else @user = nil 
	end
end

get '/' do
	@users = User.all
	@posts = Post.all
	erb :home
end


get '/users/:id' do
	@user = current_user
	@user = User.find(params[:id])
	@posts = @user.posts
	erb :user
end

get '/edit' do
	erb :edit
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
	@user = User.new(fname: params[:fname], lname: params[:lname], username: params[:username], email: params[:email], password: params[:password])
	@user.save
	session[:user_id] = @user.id
	redirect "/users/#{current_user.id}"
end


get '/signout' do
	session[:user_id] = nil
	redirect to('/')
end


post '/change-password' do
	@user = current_user
	current_user.update(password: params[:newpassword])
	
end

post '/delete-account' do
	 @user = current_user 
	 @user.delete
	 redirect '/'
end

post '/new-post' do
	post = Post.create(user_id: current_user.id, title: params[:title], body: params[:body])
	redirect '/'
end	

