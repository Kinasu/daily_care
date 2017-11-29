class Task < ApplicationRecord
  belongs_to :pet

  validates :task_text, :task_name, :pet_id, presence: true
end
