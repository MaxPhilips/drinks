class IngredientCategoriesController < ApplicationController
  def index
    @ingredient_categories = IngredientCategory.all
  end

  def show
    @ingredient_category = IngredientCategory.find(params[:id])
  end

  def new
    @ingredient_category = IngredientCategory.new
  end

  def create
    @ingredient_category = IngredientCategory.new(ingredient_category_params)

    if @ingredient_category.save
      redirect_to @ingredient_category
    else
      render :new
    end
  end

  def edit
    @ingredient_category = IngredientCategory.find(params[:id])
  end

  def update
    @ingredient_category = IngredientCategory.find(params[:id])

    if @ingredient_category.update(ingredient_category_params)
      redirect_to @ingredient_category
    else
      render :edit
    end
  end

  private

  def ingredient_category_params
    params.require(:ingredient_category).permit(:name)
  end
end
