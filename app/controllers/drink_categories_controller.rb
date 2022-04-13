class DrinkCategoriesController < ApplicationController
  def index
    @drink_categories = DrinkCategory.all
  end

  def show
    @drink_category = DrinkCategory.find(params[:id])
  end

  def new
    @drink_category = DrinkCategory.new
  end

  def create
    @drink_category = DrinkCategory.new(drink_category_params)

    if @drink_category.save
      redirect_to @drink_category
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @drink_category = DrinkCategory.find(params[:id])
  end

  def update
    @drink_category = DrinkCategory.find(params[:id])

    if @drink_category.update(drink_category_params)
      redirect_to @drink_category
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @drink_category = DrinkCategory.find(params[:id])
    @drink_category.destroy

    redirect_to drink_categories_path, status: :see_other
  end

  private

  def drink_category_params
    params.require(:drink_category).permit(:name)
  end
end
