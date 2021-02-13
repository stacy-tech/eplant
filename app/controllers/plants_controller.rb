class PlantsController < ApplicationController

  get '/plants' do
    redirect_if_not_logged_in
    binding.pry
    erb :'/plants/index.html'
  end

  post '/plants' do
   
  end
end
  