class OrdersController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update]
    before_action :authenticate_user!, except: [:show]

    def index
      @orders = []
      Order.all.each do |order|
        if order.user_id == current_user.id
          @orders << order
        end
      end
    end

    def show
    end

    def new
      @order = current_user.orders.build
    end

    def create
      @order = current_user.orders.build(order_params)

      session[:cart].each do |arrayline|
        arrayline.each do |line|
          @linetem = Lineitem.new :count => line.count, :product_id => line.productid, :order_id => @order.id
        end
      end


      if @order.save
        redirect_to @room, notice: "Room successfully created"
      else
        render :new
      end
    end

    # def cart
    #   session[:cart] = []
    # end

    private
      def set_order
        @order = Order.find(params[:id])
      end

      def order_params
        params.require(:order)
      end
end
