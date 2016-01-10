class CreateGyms < ActiveRecord::Migration[5.0]
  def change
    create_table :gyms do |t|
      t.string :gym_nm
      t.string :gym_tel
      t.string :gym_adr
      t.integer :rgn_cd

      t.timestamps
    end
  end
end
