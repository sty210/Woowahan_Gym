class AddGymimgToGym < ActiveRecord::Migration[5.0]
  def change
    add_column :gyms, :gym_img, :string
  end
end
