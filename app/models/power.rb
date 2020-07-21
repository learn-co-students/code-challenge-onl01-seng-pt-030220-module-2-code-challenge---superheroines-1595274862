class Power < ApplicationRecord
  has_many :heroine_powers
  has_many :heroine, through: :heroine_powers
end
