class Product < ApplicationRecord
  validates :name, presence: :true, length: {minimum: 3, maximum: 50}
  validates :description, presence: :true, length: {minimum: 3}
end
