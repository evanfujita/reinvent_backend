class ComponentsController < ApplicationController
    def index
        components = Component.all
        render json: components
    end

    def show
        component = Component.find_by(id: params[:id])
        render json: component
    end

    def new
        component = Component.new
        render json: component
    end

    def create
        component = Component.new(components_params)
        component.save
        render json: component
    end

    def edit
        component = Component.find_by(id: params[:id])
        render json: component
    end

    def update
        component = Component.find_by(id: params[:id])
        component.update(components_params)
        render json: component
    end

    def destroy
        component = Component.find_by(id: params[:id])
        component.destroy
        render json: { message: 'deleted!' }
    end

    private

    def components_params
        params.require(:component).permit(:name, :quantity, :quantity_unit, :par, :dish_id, :notes)
    end
end
