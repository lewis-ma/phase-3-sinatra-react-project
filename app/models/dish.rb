class Dish < ActiveRecord::Base
  # Add any associations, validations, or custom methods here
  belongs_to:restaurant

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true


  def full_description
    "#{name} - #{description}"
  end
end