class DrinkwaresController < ApplicationController
  def index
    @drinkwares = Drinkware.all
  end

  def show
    @drinkware = Drinkware.find(params[:id])
  end

  def new
    @drinkware = Drinkware.new
  end

  def create
    @drinkware = Drinkware.new(drinkware_params)

    if @drinkware.save
      redirect_to @drinkware
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @drinkware = Drinkware.find(params[:id])
  end

  def update
    @drinkware = Drinkware.find(params[:id])

    if @drinkware.update(drinkware_params)
      redirect_to @drinkware
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @drinkware = Drinkware.find(params[:id])
    @drinkware.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def drinkware_params
    params.require(:drinkware).permit(:name)
  end
end
