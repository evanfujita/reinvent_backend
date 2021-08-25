class IngredientsController < ApplicationController
    before_action :find_ingredient, only: [:show, :edit, :destroy]
    
    def index
        ingredients = Ingredient.order_by_name
        render json: ingredients
    end

    def renderIngredients
        ingredients = Ingredient.order_by_name
        low_ingredients = Ingredient.low_ingredients
        all_ingredients = {ingredients: ingredients, low_ingredients: low_ingredients}
        render json: all_ingredients
    end

    def show
        # ingredient = Ingredient.find_by(id: params[:id])
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
        # ingredient = Ingredient.find_by(id: params[:id])
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
            updated_ingredient = Ingredient.find(ingredient[:ingredient][:id])
            updated_quantity = ingredient[:newQuantity]
            is_low = updated_quantity < updated_ingredient.par
            if updated_ingredient.update(quantity: updated_quantity, low: is_low)
                updated_ingredients[updated_ingredient.id] = updated_ingredient
            end
        end
        render json: updated_ingredients
    end

    def destroy
        ingredient.destroy
        render json: { message: 'deleted!' }
    end

    private

    def find_ingredient
        ingredient = Ingredient.where(id: params[:id])
    end

    def ingredients_params
        params.require(:ingredient).permit(:name, :quantity, :quantity_unit, :par, :category_id, :vendor_id)
    end
end
