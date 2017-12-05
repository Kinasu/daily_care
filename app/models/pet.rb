class Pet < ApplicationRecord
	belongs_to :user
  has_many :tasks

	validates :pet_name, :breed, :user_id, presence: true
	validates :pet_name, uniqueness: true

	
end
