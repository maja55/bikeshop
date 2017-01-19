class LineitemsController < ApplicationController
  def new
    @lineitem = Lineitem.new
  end

  def create
    @lineitem = Lineitem.new(lineitem_params)

    if cart << @lineitem
      redirect_to @lineitem
    else
      render "new"
    end
  end

  def cart
    session[:cart] = []
  end

  private
  def lineitem_params
    params.require(:lineitem).permit(:count)
  end
end
