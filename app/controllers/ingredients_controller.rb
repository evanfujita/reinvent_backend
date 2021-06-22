class IngredientsController < ApplicationController
    def index
        ingredients = Ingredient.all
        render json: ingredients
    end

    def show
        ingredient = Ingredient.find_by(id: params[:id])
        render json: ingredient
    end

    def new
        ingredient = Ingredient.new
        render json: ingredient
    end

    def create
        ingredient = Ingredient.new(ingredients_params)
        ingredient.save
        render json: ingredient
    end

    def edit
        ingredient = Ingredient.find_by(id: params[:id])
        render json: ingredient
    end
    
    def update
        id = params[:id].to_i
        quantity = params[:quantity].to_i
        ingredient = Ingredient.find(id)
        ingredient.update(ingredients_params)
        render json: ingredient
    end

    def updateInventory
        updated_ingredients = {}
        params[:ingredients].each do |ingredient|
            updated_ingredient = Ingredient.find(ingredient[:id])
            updated_quantity = ingredient[:quantity]
            if updated_ingredient.update(quantity: updated_quantity)
                updated_ingredients[updated_ingredient.id] = updated_ingredient
            end
        end
        render json: updated_ingredients
    end

    def destroy
        ingredient = Ingredient.find_by(id: params[:id])
        ingredient.destroy
        render json: { message: 'deleted!' }
    end

    private

    def ingredients_params
        params.require(:ingredient).permit(:name, :quantity, :quantity_unit, :par, :category_id, :vendor_id)
    end
end
