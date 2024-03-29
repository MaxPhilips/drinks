class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)

    if @service.save
      redirect_to @service
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    if @service.update(service_params)
      redirect_to @service
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy

    redirect_to services_path, status: :see_other
  end

  private

  def service_params
    params.require(:service).permit(:name)
  end
end
