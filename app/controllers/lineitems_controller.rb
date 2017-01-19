class LineitemsController < ApplicationController
  def new
    @lineitem = Lineitem.new
  end

  def create
    @lineitem = Lineitem.new(lineitem_params)

    if @lineitem.save
      redirect_to @lineitem
    else
      render "new"
    end
  end

  private
  def lineitem_params
    params.require(:lineitem).permit(:count)
  end
end
