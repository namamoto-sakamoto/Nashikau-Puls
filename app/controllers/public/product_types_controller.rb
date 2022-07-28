class Public::ProductTypesController < ApplicationController
  def index
    @product_type = ProductType.new
    @product_types = ProductType.where(jpear_id: params[:id])
  end
  
  def create
    @product_type = ProductType.new(product_type_params)
    logger.debug(@product_type.inspect)
    if @product_type.save
      redirect_to public_jpear_path(@product_type.jpear_id)
    else
      @jpear = @product_type.jpear
      @product_types = ProductType.where(jpear_id: @jpear.id)
      render template: "public/jpears/show"
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
