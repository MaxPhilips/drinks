class IngredientTypesController < ApplicationController
  def index
    @ingredient_types = IngredientType.all
  end

  def show
    @ingredient_type = IngredientType.find(params[:id])
  end
end
