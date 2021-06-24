class CategoriesController < ApplicationController

    before_action :find_category, only: [:show, :edit, :update, :destroy]

    def index
        categories = Category.all
        render json: categories
    end

    def show
        render json: category
    end

    def new
        category = Category.new
        render json: category
    end

    def create
        category = Category.new(categories_params)
        category.save
        render json: category
    end

    def edit
        
        render json: category
    end
``
    def update
        
        category.update(categories_params)
        render json: category
    end

    def destroy
        
        category.destroy
        render json: { message: 'deleted!' }
    end

    private

    def find_category
        @category = Category.where(id: params[:id])
    end

    def categories_params
        params.require(:category).permit(:name)
    end

end
