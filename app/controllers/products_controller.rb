class ProductsController < ApplicationController

  def index
    filter_params = {}

    if params[:category]
      filter_params[:category] = params[:category]
    end

    if params[:gender]
      filter_params[:gender] = [params[:gender], 'unisex']
    end

    @products = Product.where(filter_params)
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render "new"
    end
  end

  def cart
    session[:cart] = []
  end

  def edit
      @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])

    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render "edit"
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:model, :brand,
    :price, :category, :gender, :frame, :image)
  end

end
