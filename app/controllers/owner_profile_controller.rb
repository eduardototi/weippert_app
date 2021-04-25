class OwnerProfileController < ApplicationController

    before_action :set_owner_profile, only: [:show, :edit, :destroy, :update]

    def index 
        @owner_profile = OwnerProfile.all
    end

    def show
    end

    def new
        @owner_profile = OwnerProfile.new 
    end

    def def create
        @owner_profile = OwnerProfile.new(owner_profile_params)
        if @owner_profile.save
          flash[:success] = "Object successfully created"
          redirect_to @owner_profile
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def edit
    end
  
    def update
      if @owner_profile.update(owner_profile_params)
        redirect_to owner_profile_path(@owner_profile)
      else
        render :edit
      end
    end
    
    private

    def owner_profile_params
        params.require(:owner_profile).permit(:name, :cpg, :rg, :addrees, :email,
            :marital_status, :birthdate)
    end

    def set_owner_profile
        @owner_profile = OwnerProfile.find(params[:id])
    end
end
