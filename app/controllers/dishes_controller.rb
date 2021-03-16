class DishesController < ApplicationController
    def index
        dishes = Dish.all
        render json: dishes
    end

    def show
        dish = Dish.find_by(id: params[:id])
        render json: dish
    end

    def new
        dish = Dish.new
        render json: dish
    end

    def create
        dish = Dish.new(dishes_params)
        dish.save
        render json: dish
    end

    def edit
        dish = Dish.find_by(id: params[:id])
        render json: dish
    end

    def update
        dish = Dish.find_by(id: params[:id])
        dish.update(dishes_params)
        render json: dish
    end

    def destroy
        dish = Dish.find_by(id: params[:id])
        dish.destroy
        render json: { message: 'deleted!' }
    end

    private

    def dishes_params
        params.require(:dish).permit(:name, :station_id, :notes)
    end
end
