class CreateCommoncds < ActiveRecord::Migration[5.0]
  def change
    create_table :commoncds do |t|
      t.string :main_cd
      t.integer :det_cd
      t.string :cd_nm

      t.timestamps
    end
  end
end
