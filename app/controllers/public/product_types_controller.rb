class Public::ProductTypesController < ApplicationController
  def index
    @product_type = ProductType.new
    @product_types = ProductType.all
  end
  
  def create
    @product_type = ProductType.new(product_type_params)
    logger.debug(@product_type.inspect)
    if @product_type.save
      redirect_to public_jpear_path(@product_type.jpear_id)
    else
      redirect_to public_jpear_path(@product_type.jpear_id)
    end
  end  

  # def edit
  # end
  
  def destroy
    @product_type = ProductType.find(params[:id])
    @product_type.destroy
    redirect_to public_jpear_path(@product_type.jpear_id)
  end
  
  private
  
  def product_type_params
    params.require(:product_type).permit(:jpear_id, :item_name, :tax_price)
  end  
end
