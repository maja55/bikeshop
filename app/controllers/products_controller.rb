class ProductsController < ApplicationController

  def index
    @products = product.all.product_products_by_creation.reverse
  end

  def show
    @product = product.find(params[:id])
  end

  def new
    @product = product.new
  end

  def create
    @product = product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render "new"
    end
  end

  def edit
      @product = product.find(params[:id])
  end

  def update
    @product = product.find(params[:id])

    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render "edit"
    end
  end

  def destroy
    @product = product.find(params[:id])

    @product.destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:model, :brand,
    :price, :category, :gender, :frame, :image)
  end

end
