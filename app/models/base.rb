class Base < ApplicationRecord

  validates :name, presence: true, length: { maximum: 30 }
  validates :category, presence: true, length: { in: 2..30 } 
end
