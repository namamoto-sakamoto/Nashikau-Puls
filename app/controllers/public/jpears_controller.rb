class Public::JpearsController < ApplicationController
  def index
    @jpears = Jpear.where(farmer_id: current_farmer.id)
  
  end

  def new
    @jpear = Jpear.new
  end
  
  def create
    @jpear = Jpear.new(jpear_params)
    @jpear.farmer_id = current_farmer.id
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
  
  def update
    @jpear = Jpear.find(params[:id])
    if @jpear.update(jpear_params)
      flash[:success] = "販売ステータスのアップデートが完了しました"
      redirect_to public_jpear_path(@jpear)
    else
      @jpear = Jpear.find(params[:id])
      @product_types = @jpear.product_types
      @product_type = ProductType.new
      render :show
    end
  end  

  def destroy
    @jpear = Jpear.find(params[:id])
    @jpear.destroy
    redirect_to public_jpears_path
  end
  
  private
  
  def jpear_params
    params.require(:jpear).permit(:image, :name, :status)
  end 
end
