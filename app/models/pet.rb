class Pet < ApplicationRecord
	belongs_to :user
  has_many :tasks

	validates :pet_name, :breed, :user_id, presence: true
	validates :pet_name, uniqueness: true

	def self.select_random
  	Pet.where(id: 4.times.map{Random.rand(Pet.all.size)})
  end
end
