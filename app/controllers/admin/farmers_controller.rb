class Admin::FarmersController < ApplicationController
 before_action :authenticate_admin!
 
  def index
    @farmers = Farmer.all
  end 
  
  def show
    @farmer = Farmer.find(params[:id])
  end
end
