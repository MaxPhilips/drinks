class IngredientCategoriesController < ApplicationController
  def index
    @ingredient_categories = IngredientCategory.all
  end

  def show
    @ingredient_category = IngredientCategory.find(params[:id])
  end
end
