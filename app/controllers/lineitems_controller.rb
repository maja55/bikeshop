class LineitemsController < ApplicationController
  def new
    @lineitem = Lineitem.new
    @lineitem.product_id = params[:product_id]
  end

  def create
    @lineitem = Lineitem.new(lineitem_params)
    if (session[:cart] ||= []) << @lineitem
      redirect_to products_path, notice: "Added to your shopping cart!"
    else
      render "new"
    end
  end

  # def cart
  #   session[:cart] = []
  # end

  private
  def lineitem_params
    params.require(:lineitem).permit(:product_id, :count)
  end
end
