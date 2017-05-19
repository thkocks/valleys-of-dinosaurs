class Dinosaur < ApplicationRecord
  def is_baby?
    age < 3
  end

  def self.order_by_name
    order(:name)
  end
end
