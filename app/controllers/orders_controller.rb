class OrdersController < ApplicationController

  def index
    @orders = order.all
  end

  def show
    @order = order.find(params[:id])
  end

  def new
    @order = order.new
  end

  def create
    @order = order.new(order_params)

    if @order.save
      redirect_to @order
    else
      render "new"
    end
  end

  def edit
      @order = order.find(params[:id])
  end

  def update
    @order = order.find(params[:id])

    if @order.update_attributes(order_params)
      redirect_to @order
    else
      render "edit"
    end
  end

  def destroy
    @order = order.find(params[:id])

    @order.destroy

    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:first_name, :last_name,
    :steert_housenr, :postcode, :city, :country)
  end
end
