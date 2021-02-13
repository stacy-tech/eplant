class PlantsController < ApplicationController

  get '/plants' do
    redirect_if_not_logged_in
    erb :'/plants/index.html'
  end
end
  