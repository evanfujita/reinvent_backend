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

    def batch_order
        ingredients = params[:order]
        ingredients.each do |ing|
            a = ing[:ingredient]
            q = ing[:quantity]
            Order.create(ingredient_id: a[:id], vendor_id: a[:vendor_id], user_id: 1, quantity_ordered: q)
        end
    end

    def accept_order

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
