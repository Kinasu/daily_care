class AddAvatarToPet < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :pet_avatar_url, :string
  end
end
