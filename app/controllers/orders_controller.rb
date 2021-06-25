class OrdersController < ApplicationController

    before_action :find_order, only: [:update, :destroy]

    def index
        orders = Order.all
    end

    def new
        order = Order.new
    end

    def create
        order = Order.new(create_order_params)

    end

    def update
        
    end

    def destroy
        
    end

    private

    def create_order_params
        params.require(:order).permit(:ingredient_id, :vendor_id, user_id, :quantity_ordered)
    end

    def update_order_params
        params.require(:order).permit(:received, :quantity_received)
    end

    def find_order
        order = Order.find_by(id: params[:id])
    end

end
