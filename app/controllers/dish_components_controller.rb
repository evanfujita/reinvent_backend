class DishComponentsController < ApplicationController
    def index
        dish_components = DishComponent.all
        render json: dish_components
    end

    def show
        dish_component = DishComponent.find_by(id: params[:id])
        render json: dish_component
    end

    def new
        dish_component = DishComponent.new
        render json: dish_component
    end

    def create
        dish_component = DishComponent.new(dishes_params)
        dish_component.save
        render json: dish_component
    end

    def edit
        dish_component = DishComponent.find_by(id: params[:id])
        render json: dish_component
    end

    def update
        dish_component = DishComponent.find_by(id: params[:id])
        dish_component.update(dishes_params)
        render json: dish_component
    end

    def destroy
        dish_component = DishComponent.find_by(id: params[:id])
        dish_component.destroy
        render json: { message: 'deleted!' }
    end

    private

    def dish_components_params
        params.require(:dish_component).permit(:dish_id, :component_id, :quantity, :quantity_unit)
    end
end
