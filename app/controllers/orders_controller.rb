class OrdersController < ApplicationController
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
      @order = Order.new
    end

    def create
      @order = current_user.orders.build(order_params)

      if @order.save
        session[:cart].each do |arrayline|
            @lineitem = Lineitem.create(:product_id => arrayline["product_id"], :count => arrayline["count"], :order_id => @order.id)
            if @lineitem.save
              debugger
            else
              debugger
            end
        end
        redirect_to @order, notice: "Order successfully created"
      else
        render :new
      end
    end

    # def cart
    #   session[:cart] = []
    # end

    private
      def order_params
        params.require(:order).permit(:user_id)
      end
end
