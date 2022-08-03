class Admin::FarmersController < ApplicationController
 before_action :authenticate_admin!
 
  def index
    @farmers = Farmer.page(params[:page]).per(10)
  end 
  
  def show
    @farmer = Farmer.find(params[:id])
  end
end
