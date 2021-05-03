class Contract < ApplicationRecord
  belongs_to :house
  belongs_to :locator

  before_save :set_contract_expiration_date, :set_total_amount, :set_contract_active
  after_save :set_house_rented 

  private

  def set_contract_expiration_date
    self.contract_expiration_date = Date.today + (self.contract_term * 30)
  end

  def set_total_amount
    self.iptu_charge ? self.total_amount = self.reantal_amount + self.iptu_amount : self.total_amount = self.reantal_amount
  end

  def set_contract_active
    self.is_active = true
  end

  def set_house_rented
    self.house.rental_status = true
    self.house.save
  end
end
