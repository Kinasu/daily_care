class AddBabyToPet < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :baby, :boolean
  end
end
