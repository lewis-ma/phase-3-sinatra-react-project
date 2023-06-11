class Restaurant < ActiveRecord::Base
  # Add any associations, validations, or custom methods here
  has_many :dishes
end