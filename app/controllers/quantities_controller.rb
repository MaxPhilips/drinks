class QuantitiesController < ApplicationController
  def index
    @quantities = Quantity.all
  end

  def show
    @quantity = Quantity.find(params[:id])
  end

  def new
    @quantity = Quantity.new
  end

  def create
    @quantity = Quantity.new(quantity_params)

    if @quantity.save
      redirect_to @quantity
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @quantity = Quantity.find(params[:id])
  end

  def update
    @quantity = Quantity.find(params[:id])

    if @quantity.update(quantity_params)
      redirect_to @quantity
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @quantity = Quantity.find(params[:id])
    @quantity.destroy

    redirect_to quantities_path, status: :see_other
  end

  private

  def quantity_params
    params.require(:quantity).permit(:amount)
  end
end
