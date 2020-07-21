class Heroine < ApplicationRecord
    has_many :powers, through: :heroine_powers
    has_many :heroine_powers
    validates :name, presence: true
    validates :super_name, presence: true, uniqueness: true 
end
