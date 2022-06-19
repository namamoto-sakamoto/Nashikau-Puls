class Public::JpearsController < ApplicationController
  def index
    @jpears = Jpear.all
  end

  def new
    @jpear = Jpear.new
  end
  
  def create
    @jpear = Jpear.new(jpear_params)
    if @jpear.save
      flash[:notice] = "新しく品種が登録されました"
      redirect_to public_jpears_path
    else
      render :new
    end
  end

  def show
    @jpear = Jpear.find(params[:id])
    @product_types = @jpear.product_types
    @product_type = ProductType.new
  end

  # def edit
  # end
  
  private
  
  def jpear_params
    params.require(:jpear).permit(:image, :name, :stutes)
  end 
end
