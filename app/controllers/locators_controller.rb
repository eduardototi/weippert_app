class LocatorsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_locator, only: [:show, :edit, :destroy, :update]

    def index
      @locators = Locator.all
    end
  
    def show
    end
  
    def new
      @locator = Locator.new
    end
  
    def create
      @locator = Locator.new(locator_params)
      if @locator.save
        redirect_to locator_path(@locator)
      end
    end
  
    def edit
    end
  
    def update
      if @locator.update(locator_params)
        redirect_to locator_path(@locator)
      else
        render :edit
      end
    end
  
    def destroy
      @locator.destroy
      redirect_to locators_path
    end
  
    private
  
    def set_locator
      @locator = Locator.find(params[:id])
    end
  
    def locator_params
      params.require(:locator).permit(:name, :cpf, :rg, :birthdate, :address, :email, :phone, :marital_status, :contact_name, :contact_phone, :contact_relation, :contact_address)
    end
end
