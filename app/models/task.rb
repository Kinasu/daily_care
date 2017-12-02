class Task < ApplicationRecord
  belongs_to :pet
  belongs_to :user

  validates :task_text, :task_name, :pet_id, :user_id, presence: true
end
