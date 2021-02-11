require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV['SESSION_SECRET']
  end

  get "/" do
    erb :welcome
  end

  get '/signup' do
    erb :'users/signup'
  end

  post '/signup' do
    user = User.create(params["user"])
    if user.valid?
      session["user_id"] = user.id
      redirect '/login'
    else
      redirect '/signup'
    end
  end

  get '/login' do
    erb :'users/login'
  end

end
