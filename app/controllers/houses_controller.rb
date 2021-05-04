class HousesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_house, only: [:show, :edit, :destroy, :update]

    def index
      @houses = House.all
    end
  
    def show
    end
  
    def new
        @house = House.new
    end
  
    def create
        @house = House.new(house_params)
        if @house.save
            redirect_to house_path(@house)
        end
    end
  
    def edit
    end
  
    def update
      if @house.update(house_params)
        redirect_to house_path(@house)
      else
        render :edit
      end
    end
  
    def destroy
      @house.destroy
      redirect_to houses_path
    end
  
    private
  
    def set_house
      @house = House.find(params[:id])
    end
  
    def house_params
      params.require(:house).permit(:description, :address, :rental_status, :owner_id, :house_name)
    end
end
