class CreateGymadms < ActiveRecord::Migration[5.0]
  def change
    create_table :gymadms do |t|
      t.integer :gym_no
      t.integer :adm_no

      t.timestamps
    end
  end
end
