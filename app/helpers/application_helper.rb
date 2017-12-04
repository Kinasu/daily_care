module ApplicationHelper
  def pet_avatar(pet)
    if pet.pet_avatar_url.present?
      pet.pet_avatar_url
    else
      asset_path 'avatar.jpg'
    end
  end
end
