class Order < ActiveRecord::Base
  attribute :customer_name, :string

  # Associations
  belongs_to :dish

  # Validations
  validates :customer_name, presence: true
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 0 }

  # Custom methods
  def total_price
    dish.price.to_f * quantity.to_i
  end

  def display_order
    "#{customer_name} ordered #{quantity} #{dish.name.pluralize(quantity)} for a total of $#{total_price}"
  end
end
