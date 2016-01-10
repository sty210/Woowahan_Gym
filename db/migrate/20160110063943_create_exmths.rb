class CreateExmths < ActiveRecord::Migration[5.0]
  def change
    create_table :exmths do |t|
      t.integer :ex_det_cd
      t.string :ex_mth_img
      t.text :ex_mth_ep

      t.timestamps
    end
  end
end
