class Public::CustomersController < ApplicationController
  
  def index
    @customers = Customer.where(farmer_id: current_farmer.id)
    @jpears = Jpear.where(farmer_id: current_farmer.id)
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.farmer_id = current_farmer.id
    if @customer.save
      flash[:success] = "顧客情報を登録しました！"
      redirect_to public_customers_path(@customer)
    else
      render :new
    end  
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:success] = "顧客情報のアップデートが完了しました！"
      redirect_to public_customer_path
    else
      render :edit
    end  
  end
  
  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to public_customers_path
  end
  
  private
  
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :first_name_kana, :last_name_kana, :postcode, :address, :phone_number, :memo)
  end
end