class UsersController < ApplicationController

  get '/signup' do
    erb :'users/signup.html'
  end

  post '/signup' do
    user = User.create(params)
    if user.valid?
      flash[:success]="sucessfully created a user"
      # session["user_id"] = user.id
      redirect '/login'
    else
      # binding.pry
      flash[:error]=user.errors.full_messages.to_sentence
      redirect '/signup'
    end
  end
end