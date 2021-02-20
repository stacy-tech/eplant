class PlantsController < ApplicationController

  get '/plants' do
    redirect_if_not_logged_in
    @plants = Plant.all
    erb :'/plants/index.html'
  end

  get '/plants/:id' do 
    redirect_if_not_logged_in
    @plant = Plant.find(params[:id])
    erb :'/plants/show.html'
  end

end
  