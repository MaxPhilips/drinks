class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    params_to_modify = ingredient_params
    params_to_modify['ingredient_category'] = IngredientCategory.find(ingredient_params['ingredient_category'])
    params_to_modify['ingredient_type'] = IngredientType.find(ingredient_params['ingredient_type'])

    @ingredient = Ingredient.new(params_to_modify)

    if @ingredient.save
      redirect_to @ingredient
    else
      render :new
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    params_to_modify = ingredient_params
    params_to_modify['ingredient_category'] = IngredientCategory.find(ingredient_params['ingredient_category'])
    params_to_modify['ingredient_type'] = IngredientType.find(ingredient_params['ingredient_type'])

    if @ingredient.update(params_to_modify)
      redirect_to @ingredient
    else
      render :edit
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    redirect_to root_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :ingredient_category, :ingredient_type, :in_stock)
  end
end
