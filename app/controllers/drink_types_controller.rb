class DrinkTypesController < ApplicationController
  def index
    @drink_types = DrinkType.all
  end

  def show
    @drink_type = DrinkType.find(params[:id])
  end

  def new
    @drink_type = DrinkType.new
  end

  def create
    @drink_type = DrinkType.new(drink_type_params)

    if @drink_type.save
      redirect_to @drink_type
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @drink_type = DrinkType.find(params[:id])
  end

  def update
    @drink_type = DrinkType.find(params[:id])

    if @drink_type.update(drink_type_params)
      redirect_to @drink_type
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @drink_type = DrinkType.find(params[:id])
    @drink_type.destroy

    redirect_to drink_types_path, status: :see_other
  end

  private

  def drink_type_params
    params.require(:drink_type).permit(:name)
  end
end
