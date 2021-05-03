class ContractsController < ApplicationController

    before_action :set_contract, only: [:show, :edit, :destroy, :update]

    def index
      @contracts = Contract.all
    end
  
    def show
    end
  
    def new
        @contract = Contract.new
    end
  
    def create
        @contract = Contract.new(contract_params)
        if @contract.save
            redirect_to contract_path(@contract)
        end
    end
  
    def edit
    end
  
    def update
      if @contract.update(contract_params)
        redirect_to contract_path(@contract)
      else
        render :edit
      end
    end
  
    def destroy
      @contract.destroy
      redirect_to contracts_path
    end
  
    private
  
    def set_contract
      @contract = Contract.find(params[:id])
    end
  
    def contract_params
      params.require(:contract).permit(:reantal_amount, :iptu_amount, :contract_expiration_date, :contract_term, :discount, :readjust, :fees, :iptu_charge, :next_payment_date, :is_active, :total_amount, :house_id, :locator_id)
    end
end
