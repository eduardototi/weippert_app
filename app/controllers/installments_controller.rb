class InstallmentsController < ApplicationController
    def index 
        @installments = Installment.where(contract_id: params[:contract_id])
    end

    def change_payment_status
        @installment = Installment.find(params[:format])
        @installment.payment_status = true
        if @installment.save
            redirect_to contract_installments_path(@installment.contract)
        end
    end
end
