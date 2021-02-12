class SessionsController < ApplicationController

  get '/login' do
    erb :'sessions/login.html'
  end

  post '/login' do
    user = User.find_by_email(params["email"])
    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      flash[:success] = "sucessfully logined in"
      redirect '/plants'
    else
      flash[:error] = "invalid credentials"
      redirect '/login'
    end
  end
end