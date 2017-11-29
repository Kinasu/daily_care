class AddPetToTask < ActiveRecord::Migration[5.1]
  def change
    add_reference :tasks, :pet, foreign_key: true
  end
end
