class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :pet_name
      t.date :age
      t.string :breed

      t.timestamps
    end
  end
end
