class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :destroy, :update]

  def index
    @recipes = Recipe.all
  end

  def show

  end

  def new
    @recipe = Recipe.new
  end

  def edit

  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.valid?
      @recipe.save
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def update
    if @recipe.update(recipe_params)    
      redirect_to recipe_path
    else
      render :edit 
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cook_time, :ingredients, :description)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
