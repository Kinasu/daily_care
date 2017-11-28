class Pet < ApplicationRecord
	belongs_to :user

	validates :pet_name, :breed, presence: true
	validates :pet_name, uniqueness: true
end
