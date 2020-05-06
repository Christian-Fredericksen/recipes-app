class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :destroy]

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
  end

  def destroy
    @recipe.destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :cook_time, :ingredients, :description)
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
