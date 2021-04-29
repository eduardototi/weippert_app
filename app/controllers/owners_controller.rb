class OwnersController < ApplicationController
    before_action :set_owner, only: [:show, :edit, :destroy, :update]

    def index
      @owners = Owner.all
    end
  
    def show
    end
  
    def new
      @owner = Owner.new
    end
  
    def create
      @owner = Owner.new(owner_params)
      if @owner.save
        redirect_to owner_path(@owner)
      end
    end
  
    def edit
    end
  
    def update
      if @owner.update(owner_params)
        redirect_to owner_path(@owner)
      else
        render :edit
      end
    end
  
    def destroy
      @owner.destroy
      redirect_to owners_path
    end
  
    private
  
    def set_owner
      @owner = Owner.find(params[:id])
    end
  
    def owner_params
      params.require(:owner).permit(:name, :cpf, :rg, :birthdate, :address, :email, :phone, :marital_status)
    end
  
end
