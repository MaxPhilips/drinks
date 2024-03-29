class DrinksController < ApplicationController
  def index
    @search = ransack_params
    @search.sorts = 'name asc' if @search.sorts.empty?
    @drinks = @search.result.page(params[:page])
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)

    if @drink.save
      redirect_to @drink
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @drink = Drink.find(params[:id])
  end

  def update
    @drink = Drink.find(params[:id])

    if @drink.update(drink_params)
      redirect_to @drink
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy

    redirect_to drinks_path, status: :see_other
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :description, :preparation, :service_id, :drinkware_id, :drink_category_id)
  end

  def ransack_params
    Drink.ransack(params[:q])
  end

  def ransack_result
    @search.result(distinct: true)
  end
end
