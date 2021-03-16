class ComponentIngredientsController < ApplicationController

    class CategoriesController < ApplicationController

        def index
            component_ingredients = ComponentIngredient.all
            render json: component_ingredients
        end
    
        def show
            component_ingredient = ComponentIngredient.find_by(id: params[:id])
            render json: component_ingredient
        end
    
        def new
            component_ingredient = ComponentIngredient.new
            render json: component_ingredient
        end
    
        def create
            component_ingredient = ComponentIngredient.new(component_ingredients_params)
            component_ingredient.save
            render json: component_ingredient
        end
    
        def edit
            component_ingredient = ComponentIngredient.find_by(id: params[:id])
            render json: component_ingredient
        end
    
        def update
            component_ingredient = ComponentIngredient.find_by(id: params[:id])
            component_ingredient.update(component_ingredients_params)
            render json: component_ingredient
        end
    
        def destroy
            component_ingredient = ComponentIngredient.find_by(id: params[:id])
            component_ingredient.destroy
            render json: { message: 'deleted!' }
        end
    
        private
    
        def component_ingredients_params
            params.require(:component_ingredient).permit(:component_id, :ingredient_id)
        end
    
    end
    

end
