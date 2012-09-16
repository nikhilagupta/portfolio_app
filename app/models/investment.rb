class Investment < ActiveRecord::Base
  validate :quantity_should_be_positive

  def  quantity_should_be_positive
    if quantity < 0
      errors.add :quantity,'quantity_should_be_positive'
    end
  end
end
